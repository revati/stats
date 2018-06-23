defmodule Stats.ScraperTest do
  use Stats.DataCase

  alias Stats.Scraper
  alias Stats.Contents.SourceContent
  alias Stats.Contents.MeetingContent
  alias Stats.Contents.PoolContent

  test "scrape source for meetings" do
    source = build_db(:source)
    {:ok, contents} = Scraper.fetch_contents(source)
    source = %{source | contents: contents}
    {:ok, found_meetings} = Scraper.parse_contents(source)

    assert found_meetings === SourceContent.found_meetings(source)
  end

  test "scrape meeting for pools" do
    meeting = build_db(:meeting)
    {:ok, contents} = Scraper.fetch_contents(meeting)
    meeting = %{meeting | contents: contents}
    {:ok, found_pools} = Scraper.parse_contents(meeting)

    assert found_pools === MeetingContent.found_pools(meeting)
  end

  test "scrape pool for votes" do
    pool = build_db(:pool)
    {:ok, contents} = Scraper.fetch_contents(pool)
    pool = %{pool | contents: contents}
    {:ok, found_votes} = Scraper.parse_contents(pool)

    assert found_votes === PoolContent.found_votes(pool)
  end
end
