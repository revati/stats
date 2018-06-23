defmodule Stats.Pool do
  use Stats.Schema
  import Ecto.Changeset
  import Ecto.Query

  alias Stats.Meeting
  alias Stats.Vote

  schema "pools" do
    belongs_to(:meeting, Meeting)
    has_many(:votes, Vote)
    field(:url, :string)
    field(:title, :string)
    field(:contents, :string)
  end

  def query_from_struct(%__MODULE__{id: nil, url: url}), do: __MODULE__ |> where(url: ^url)
  def query_from_struct(%__MODULE__{id: id}), do: __MODULE__ |> where(id: ^id)

  def changeset(%__MODULE__{} = old, %__MODULE__{} = new), do: old |> cast(%{}, [])

  def changeset_contents(%__MODULE__{} = source, contents) do
    # TODO: Check if contents have changed before previous time
    source
    |> cast(%{contents: contents}, [:contents])
    |> validate_required([:contents])
  end
end
