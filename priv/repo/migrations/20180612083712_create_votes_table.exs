defmodule Stats.Repo.Migrations.CreateVotesTable do
  use Ecto.Migration

  def change do
    create table(:votes) do
      add :pool_id, references(:pools), null: false
      add :politician_id, references(:politicians), null: false
      add :party_id, references(:parties), null: false
      add :decision, :string, null: false
    end
  end
end
