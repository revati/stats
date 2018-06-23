defmodule Stats.Repo.Migrations.CreateMeetingsTable do
  use Ecto.Migration

  def change do
    create table(:meetings) do
      add :source_id, references(:sources), null: false
      add :url, :string, null: false
      add :date, :date, null: false
      add :contents, :text
    end

    create index("meetings", [:url], unique: true)
  end
end
