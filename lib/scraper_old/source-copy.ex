defmodule ScraperOld.Source do
  use Stats.Schema
  import Ecto.Changeset

  schema "sources" do
    field(:title, :string)
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
