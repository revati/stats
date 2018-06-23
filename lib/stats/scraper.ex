defmodule Stats.Scraper do
  alias Stats.Scraper.Parser

  @fetcher Application.get_env(:stats, :contents_fetcher)

  def fetch_contents(struct), do: @fetcher.fetch(struct)
  def parse_contents(struct), do: Parser.parse(struct)
end
