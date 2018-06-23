defprotocol Stats.Contents.FakeContentsFetcher do
  def fetch(data)
end

defimpl Stats.Contents.FakeContentsFetcher, for: Stats.Source do
  def fetch(source), do: Stats.Contents.SourceContent.raw_content()
end

defimpl Stats.Contents.FakeContentsFetcher, for: Stats.Meeting do
  def fetch(source), do: Stats.Contents.MeetingContent.raw_content()
end

defimpl Stats.Contents.FakeContentsFetcher, for: Stats.Pool do
  def fetch(source), do: Stats.Contents.PoolContent.raw_content()
end
