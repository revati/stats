defmodule ScraperOld.Scheduler do
  use GenServer

  alias ScraperOld.SourceScraper

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def init(:ok) do
    Process.send_after(__MODULE__, :scrape, 0)

    {:ok, :ok}
  end

  def handle_info(:scrape, :ok) do
    SourceScraper.scrape_all()

    Process.send_after(__MODULE__, :scrape, 100_000)
    {:noreply, :ok}
  end
end
