defmodule ScraperOld.SourceFetcher do
  alias ScraperOld.Source

  def fetch(%Source{url: url}) do
    HTTPoison.get("https://example.com/", [], ssl: [{:versions, [:"tlsv1.2"]}])
  end
end
