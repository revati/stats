use Mix.Config

config :stats, contents_fetcher: Stats.Contents.FakeContentsFetcher

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :stats, StatsWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :stats, Stats.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "homestead",
  password: "secret",
  database: "stats",
  hostname: "127.0.0.1",
  port: 3306,
  pool: Ecto.Adapters.SQL.Sandbox
