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
        message -> process_message(current_value, message)
      end

    loop(new_value)
  end

  defp process_message(current_value, {:value, caller}) do
    send(caller, {:response, current_value})
    current_value
  end

  defp process_message(current_value, {:add, value}) do
    current_value + value
  end

  defp process_message(current_value, {:sub, value}) do
    current_value - value
  end

  defp process_message(current_value, {:mul, value}) do
    current_value * value
  end

  defp process_message(current_value, {:div, value}) do
    current_value / value
  end

  @doc """
  Returns the current value.
  """
  def value(server_pid) do
    send(server_pid, {:value, self()})
    receive do
      {:response, value} ->
        value
    end
  end

  # Other client facing methods used to operate on the value.
  def add(server_pid, value), do: send(server_pid, {:add, value})
  def sub(server_pid, value), do: send(server_pid, {:sub, value})
  def mul(server_pid, value), do: send(server_pid, {:mul, value})
  def div(server_pid, value), do: send(server_pid, {:div, value})
end
