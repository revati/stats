defimpl Stats.Scraper.Parser, for: Stats.Source do
  alias Stats.Source

  @base_url Application.get_env(:stats, :base_url)

  @months_map %{
    "Janvāris" => 1,
    "Februāris" => 2,
    "Marts" => 3,
    "Aprīlis" => 4,
    "Maijs" => 5,
    "Jūnijs" => 6,
    "Jūlijs" => 7,
    "Augusts" => 8,
    "Septembris" => 9,
    "Oktobris" => 10,
    "Novembris" => 11,
    "Decembris" => 12
  }

  def parse(%Source{contents: contents} = source) do
    parsed = Floki.parse(contents)

    years = parsed |> Floki.find(".news-block h2")
    tables = parsed |> Floki.find(".news-block h2 + table")

    meetings =
      Enum.zip(years, tables)
      |> Enum.flat_map(&parse_yearly_block/1)
      |> Enum.map(fn {date, url} ->
        Ecto.build_assoc(source, :meetings, date: date, url: url)
      end)

    {:ok, meetings}
  end

  defp parse_yearly_block({title, table}) do
    {year, _rest} = title |> Floki.text() |> Integer.parse()

    {_element, _attributes, contents} = table

    Enum.flat_map(contents, fn tr ->
      month = Floki.find(tr, ".month") |> Floki.text()
      month = Map.get(@months_map, month)

      Floki.find(tr, "a")
      |> Enum.map(fn a ->
        {day, _rest} = a |> Floki.text() |> Integer.parse()
        {:ok, date} = Date.new(year, month, day)
        [href] = Floki.attribute(a, "href")

        {date, @base_url <> href}
      end)
    end)
  end
end
