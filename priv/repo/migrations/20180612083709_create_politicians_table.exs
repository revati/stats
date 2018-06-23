defmodule Stats.Repo.Migrations.CreatePoliticiansTable do
  use Ecto.Migration

  def change do
    create table(:politicians) do
      add :party_id, references(:parties), null: false
      add :name, :string, null: false
    end

    create index("politicians", [:name], unique: true)
  end
end
