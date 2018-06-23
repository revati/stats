defmodule Stats.Repo.Migrations.CreatePartiesTable do
  use Ecto.Migration

  def change do
    create table(:parties) do
      add :title, :string, null: false
    end

    create index("parties", [:title], unique: true)
  end
end
