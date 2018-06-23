defmodule Stats.Politician do
  use Stats.Schema
  import Ecto.Changeset
  import Ecto.Query

  alias Stats.Party

  schema "politicians" do
    belongs_to(:party, Party)
    field(:name, :string)
  end

  def query_from_struct(%__MODULE__{id: nil, name: name}), do: __MODULE__ |> where(name: ^name)
  def query_from_struct(%__MODULE__{id: id}), do: __MODULE__ |> where(id: ^id)

  def changeset(%__MODULE__{} = old, %__MODULE__{} = new), do: old |> cast(%{}, [])

  def with_party(%__MODULE__{} = politician, %Party{id: id} = party) when not is_nil(id) do
    %{politician | party_id: id, party: party}
  end
end
