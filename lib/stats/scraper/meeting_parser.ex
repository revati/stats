defimpl Stats.Scraper.Parser, for: Stats.Meeting do
  alias Stats.Meeting
  alias Stats.Pool

  @exluded_link_text "Lūdzu rezultātu!"

  def parse(%Meeting{contents: contents, source: %{nth: nth}} = meeting) do
    links =
      contents
      |> Floki.parse()
      |> Floki.find("#content a[href^=\"#{url_base(nth)}\"]")
      |> Enum.map(fn a ->
        [href] = Floki.attribute(a, "href")

        {Floki.text(a), href}
      end)
      |> Enum.filter(fn
        {@exluded_link_text, _} -> false
        link -> true
      end)
      |> Enum.map(fn {title, url} ->
        Ecto.build_assoc(meeting, :pools, title: title, url: url)
      end)

    {:ok, links}
  end

  defp url_base(nth), do: "http://titania.saeima.lv/LIVS#{nth}/SaeimaLIVS2_DK.nsf/0/"
end
