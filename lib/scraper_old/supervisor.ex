defmodule ScraperOld.Supervisor do
  use DynamicSupervisor

  alias ScraperOld.Source
  alias ScraperOld.MeetingsScraper

  def start_link(_args) do
    DynamicSupervisor.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def start_meetings_scraper(%Source{} = source) do
    spec = {MeetingsScraper, source: source}

    DynamicSupervisor.start_child(__MODULE__, spec)
  end

  @impl true
  def init(_arg) do
    DynamicSupervisor.init(strategy: :one_for_one)
  end
end
