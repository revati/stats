defmodule Stats.TaskSupervisor do
  @name __MODULE__

  def async(fun, options \\ []), do: Task.Supervisor.async(@name, fun, options)

  def async(module, fun, args, options \\ []),
    do: Task.Supervisor.async(@name, module, fun, args, options)

  def async_nolink(fun, options \\ []), do: Task.Supervisor.async_nolink(@name, fun, options)

  def async_nolink(module, fun, args, options \\ []),
    do: Task.Supervisor.async_nolink(@name, module, fun, args, options)

  def async_stream(enumerable, fun, options \\ []),
    do: Task.Supervisor.async_stream(@name, enumerable, fun, options)

  def async_stream(enumerable, module, function, args, options \\ []),
    do: Task.Supervisor.async_stream(@name, enumerable, module, function, args, options)

  def async_stream_nolink(enumerable, fun, options \\ []),
    do: Task.Supervisor.async_stream_nolink(@name, enumerable, fun, options)

  def async_stream_nolink(enumerable, module, function, args, options \\ []),
    do: Task.Supervisor.async_stream_nolink(@name, enumerable, module, function, args, options)

  def children(), do: Task.Supervisor.children(@name)
  def start_child(fun, options \\ []), do: Task.Supervisor.start_child(@name, fun, options)

  def start_child(module, fun, args, options \\ []),
    do: Task.Supervisor.start_child(@name, module, fun, args, options)

  def terminate_child(pid), do: Task.Supervisor.terminate_child(@name, pid)
end
