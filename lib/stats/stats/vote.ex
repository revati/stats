defmodule Stats.Vote do
  use Stats.Schema
  import Ecto.Changeset
  import Ecto.Query

  alias Stats.Pool
  alias Stats.Politician
  alias Stats.Party

  schema "votes" do
    belongs_to(:pool, Pool)
    belongs_to(:politician, Politician)
    belongs_to(:party, Party)
    field(:decision, :string)
  end

  def query_from_struct(%__MODULE__{id: nil, pool_id: pool_id, politician_id: politician_id}),
    do: __MODULE__ |> where(pool_id: ^pool_id, politician_id: ^politician_id)

  def query_from_struct(%__MODULE__{id: id}), do: __MODULE__ |> where(id: ^id)

  def with_party(%__MODULE__{} = vote, %Party{id: id} = party) when not is_nil(id) do
    %{vote | party_id: id, party: party}
  end

  def with_politician(%__MODULE__{} = vote, %Politician{id: id} = politician)
      when not is_nil(id) do
    %{vote | politician_id: id, politician: politician}
  end

  def changeset(%__MODULE__{} = old, %__MODULE__{} = new), do: old |> cast(%{}, [])
end
