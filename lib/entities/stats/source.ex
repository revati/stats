defmodule Stats.Source do
  use Stats.Schema
  import Ecto.Changeset

  schema "sources" do
    has_many(:meetings, Stats.Meeting)

    field(:nth, :integer)
    field(:url, :string)
    field(:contents, :string)
  end

  def changeset_contents(%__MODULE__{} = source, contents) do
    # TODO: Check if contents have changed before previous time
    source
    |> cast(%{contents: contents}, [:contents])
    |> validate_required([:contents])
  end
end
