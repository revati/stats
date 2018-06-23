alias Stats.Repo
alias Stats.Meeting
alias Stats.Pool
alias Stats.Vote
alias Stats.Politician
alias Stats.Party

defprotocol Stats.Manager do
  def persist(data)
end

defimpl Stats.Manager, for: List do
  def persist(data), do: data |> Enum.map(&Stats.Manager.persist/1)
end

defimpl Stats.Manager, for: Meeting do
  def persist(meeting) do
    meeting
    |> Meeting.query_from_struct()
    |> Repo.one()
    |> case do
      nil ->
        Repo.insert!(meeting)

      persisted_meeting ->
        persisted_meeting
        |> Meeting.changeset(meeting)
        |> Repo.update!()
    end
  end
end

defimpl Stats.Manager, for: Pool do
  import Ecto.Query

  def persist(pool) do
    pool
    |> Pool.query_from_struct()
    |> Repo.one()
    |> case do
      nil ->
        Repo.insert!(pool)

      persisted_pool ->
        persisted_pool
        |> Pool.changeset(pool)
        |> Repo.update!()
    end
  end
end

defimpl Stats.Manager, for: Party do
  import Ecto.Query

  def persist(party) do
    party
    |> Party.query_from_struct()
    |> Repo.one()
    |> case do
      nil ->
        Repo.insert!(party)

      persisted_party ->
        persisted_party
        |> Party.changeset(party)
        |> Repo.update!()
    end
  end
end

defimpl Stats.Manager, for: Politician do
  import Ecto.Query

  def persist(politician) do
    politician
    |> Politician.query_from_struct()
    |> Repo.one()
    |> case do
      nil ->
        Repo.insert!(politician)

      persisted_politician ->
        persisted_politician
        |> Politician.changeset(politician)
        |> Repo.update!()
    end
  end
end

defimpl Stats.Manager, for: Vote do
  import Ecto.Query

  def persist(vote) do
    party = Stats.Manager.persist(vote.party)

    politician =
      vote.politician
      |> Politician.with_party(party)
      |> Stats.Manager.persist()

    vote =
      vote
      |> Vote.with_party(party)
      |> Vote.with_politician(politician)

    vote
    |> Vote.query_from_struct()
    |> Repo.one()
    |> case do
      nil ->
        Repo.insert!(vote)

      persisted_vote ->
        persisted_vote
        |> Vote.changeset(vote)
        |> Repo.update!()
    end
  end
end
