defmodule Calculator do
  @doc """
  Spawns a server with initial state of 0
  """
  def start do
    initial_value = 0
    spawn(fn -> loop(initial_value) end)
  end

  defp loop(current_value) do
    new_value =
      receive do
        {:value, caller} ->
          send(caller, {:response, current_value})
          current_value

        {:add, value} -> current_value + value
        {:sub, value} -> current_value - value
        {:mul, value} -> current_value * value
        {:div, value} -> current_value / value

        invalid_request ->
          IO.puts("invalid request #{inspect invalid_request}")
          current_value
      end

    loop(new_value)
  end

  def value(server_pid) do
    send(server_pid, {:value, self()})
    receive do
      {:response, value} ->
        value
    end
  end

  def add(server_pid, value), do: send(server_pid, {:add, value})
  def sub(server_pid, value), do: send(server_pid, {:sub, value})
  def mul(server_pid, value), do: send(server_pid, {:mul, value})
  def div(server_pid, value), do: send(server_pid, {:div, value})
end
