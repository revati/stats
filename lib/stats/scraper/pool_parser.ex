defimpl Stats.Scraper.Parser, for: Stats.Pool do
  alias Stats.Pool
  alias Stats.Politician
  alias Stats.Party
  alias Stats.Vote

  @js_line "var voteFullListByNames="
  @split_symbol "¤"

  def parse(%Pool{contents: contents} = pool) do
    votes =
      contents
      |> Floki.parse()
      |> Floki.find("script")
      |> Enum.find(fn {_tag, _attributes, [text]} -> String.contains?(text, @js_line) end)
      |> parse_js_block()
      |> Enum.map(fn [_num, name, party, vote] ->
        Ecto.build_assoc(
          pool,
          :votes,
          politician: %Politician{name: name},
          party: %Party{title: party},
          vote: vote
        )
      end)

    {:ok, votes}
  end

  defp parse_js_block({_tag, _attributes, [text]}) do
    text
    |> String.split("\n")
    |> Enum.find(fn line -> String.contains?(line, @js_line) end)
    |> parse_js_line()
  end

  defp parse_js_line(line) do
    line
    |> String.trim_leading(@js_line)
    |> String.trim_trailing(";")
    |> HtmlEntities.decode()
    |> URI.decode()
    |> Poison.decode!()
    |> Enum.map(&String.split(&1, @split_symbol))
  end
end
