defmodule Stats.Fixture do
  import Stats.Factory

  def build_db(:source) do
    source_factory |> Stats.Repo.insert!()
  end

  def build_db(:meeting) do
    meeting_factory |> Stats.Repo.insert!()
  end

  def build_db(:pool) do
    pool_factory |> Stats.Repo.insert!()
  end
end
