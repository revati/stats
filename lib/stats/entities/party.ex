defmodule Stats.Party do
  use Stats.Schema
  import Ecto.Changeset
  import Ecto.Query

  schema "parties" do
    field(:title, :string)
  end

  def query_from_struct(%__MODULE__{id: nil, title: title}),
    do: __MODULE__ |> where(title: ^title)

  def query_from_struct(%__MODULE__{id: id}), do: __MODULE__ |> where(id: ^id)

  def changeset(%__MODULE__{} = old, %__MODULE__{} = new), do: old |> cast(%{}, [])
end
