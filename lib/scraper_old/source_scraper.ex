defmodule ScraperOld.SourceScraper do
  alias ScraperOld.Source
  alias Stats.Repo
  alias ScraperOld.MeetingsScraper
  alias Stats.TaskSupervisor

  def scrape_all() do
    Source
    |> Repo.all()
    |> IO.inspect()

    # |> Enum.each(&TaskSupervisor.start_child(__MODULE__, :scrape, [&1]))
  end

  def scrape(%Source{} = source) do
    IO.inspect(source.url, label: :source)
    # source
    # |> Source.changeset_contents(fetch_contents(source))
    # |> Repo.update!()
    # |> MeetingsScraper.extract_meetings()
  end

  # defp fetch_contents(%Source{url: url, contents: nil}), do: HTTPoison.get!(url).body
  # defp fetch_contents(%Source{contents: contents}), do: contents
end
