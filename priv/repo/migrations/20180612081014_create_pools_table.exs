defmodule Stats.Repo.Migrations.CreatePoolsTable do
  use Ecto.Migration

  def change do
    create table(:pools) do
      add :meeting_id, references(:meetings), null: false
      add :url, :string, null: false
      add :title, :string, null: false
      add :contents, :text
    end

    create index("pools", [:url], unique: true)
  end
end
