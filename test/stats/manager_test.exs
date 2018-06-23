defmodule Stats.ManagerTest do
  use Stats.DataCase

  test "persist new meeting" do
    meeting = build(:meeting)

    persisted_meeting = Stats.Manager.persist(meeting)

    assert !is_nil(persisted_meeting.id)
  end

  test "update existing meeting" do
    meeting = build(:meeting) |> Repo.insert!()

    persisted_meeting = Stats.Manager.persist(meeting)

    assert meeting.id === persisted_meeting.id
  end

  test "persist new pool" do
    pool = build(:pool)

    persisted_pool = Stats.Manager.persist(pool)

    assert !is_nil(persisted_pool.id)
  end

  test "update existing pool" do
    pool = build(:pool) |> Repo.insert!()

    persisted_pool = Stats.Manager.persist(pool)

    assert pool.id === persisted_pool.id
  end

  test "persist new party" do
    party = build(:party)

    persisted_party = Stats.Manager.persist(party)

    assert !is_nil(persisted_party.id)
  end

  test "update existing party" do
    party = build(:party) |> Repo.insert!()

    persisted_party = Stats.Manager.persist(party)

    assert party.id === persisted_party.id
  end

  test "persist new politician" do
    politician = build(:politician)

    persisted_politician = Stats.Manager.persist(politician)

    assert !is_nil(persisted_politician.id)
  end

  test "update existing politician" do
    politician = build(:politician) |> Repo.insert!()

    persisted_politician = Stats.Manager.persist(politician)

    assert politician.id === persisted_politician.id
  end

  test "persist new vote" do
    vote = build(:vote)

    persisted_vote = Stats.Manager.persist(vote)

    assert !is_nil(persisted_vote.id)
  end

  test "update existing vote" do
    vote = build(:vote)

    party = vote.party |> Repo.insert!()
    politician = %{vote.politician | party: party} |> Repo.insert!()
    vote = %{vote | party: party, politician: politician}

    vote = Repo.insert!(vote)

    persisted_vote = Stats.Manager.persist(vote)

    assert vote.id === persisted_vote.id
  end
end
