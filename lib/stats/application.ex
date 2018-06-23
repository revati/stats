defmodule Stats.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      {Stats.Repo, []},
      {StatsWeb.Endpoint, []}
      # {Stats.Scraper.Supervisor, []},
      # {Stats.TaskSupervisor, name: Stats.TaskSupervisor},
      # {Scraper.Supervisor, []},
      # {Scraper.Scheduler, []}
    ]

    opts = [strategy: :one_for_one, name: Stats.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    StatsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
