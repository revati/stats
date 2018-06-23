# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :stats,
  ecto_repos: [Stats.Repo],
  generators: [binary_id: true],
  base_url: "http://www.saeima.lv",
  votes_base_url: "http://titania.saeima.lv/",
  contents_fetcher: SOMEMODULEGOESHERER

config :stats, Stats.Repo, migration_primary_key: [id: :uuid, type: :binary_id]

# Configures the endpoint
config :stats, StatsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9X6b8iNQbotyoO8Jh9FSRMfoaHjJzeP7thXqmceq8UC0Mi5AGNCTBQw3uPrxIqNY",
  render_errors: [view: StatsWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Stats.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
