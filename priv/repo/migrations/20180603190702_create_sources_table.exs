defmodule Stats.Repo.Migrations.CreateSourcesTable do
  use Ecto.Migration

  def change do
    create table(:sources) do
      add :nth, :integer, null: false
      add :url, :string, null: false
      add :contents, :text
    end

    create index("sources", [:nth], unique: true)
    create index("sources", [:url], unique: true)
  end
end
