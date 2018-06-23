defmodule ScraperOld.ContentsFetcher do
  use GenServer

  def start_link(paralel_limit) do
    GenServer.start_link(__MODULE__, paralel_limit, name: __MODULE__)
  end

  def init(paralel_limit) do
    {:ok, %{paralel_limit: paralel_limit, in_progress: [], queued: []}}
  end

  def fetch(%{url: url}), do: GenServer.cast(__MODULE__, {:fetch_contents, url, self})

  def handle_cast({:fetch, url, from}, state) do
  end

  defp fetch_contents(url) do
  end
end
