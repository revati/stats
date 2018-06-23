defmodule ScraperOld.MeetingsScraper do
  use GenServer

  alias ScraperOld.Source

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

  def start_link(%Source{} = source) do
    GenServer.start_link(__MODULE__, %{source: source})
  end

  def init(source) do
    {:ok, source}
  end

  def extract_meetings_from_source(%Source{contents: contents}) do
    parsed = Floki.parse(contents)

    years = Floki.find(parsed, ".news-block h2")
    tables = Floki.find(parsed, ".news-block h2 + table")

    Enum.zip(years, tables)
    |> Enum.map(&extract_yearly_meetings(&1))
    |> IO.inspect()
  end

  defp extract_yearly_meetings({title, table}) do
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

        {date, href}
      end)
    end)
  end
end
