defmodule Server do
  @moduledoc """
  Server module defines a long-running server module
  """
  @doc """
  start creates a separate light-weight process and calls loop inside it.
  """
  def start() do
    spawn(fn -> loop end)
  end

  @doc """
  send_msg sends a message to server process.
  """
  def send_msg(server, message) do
    send(server, {self(), message})

    receive do
      {:response, response} -> response
    end
  end

  @doc """
  loop listens for new messages indefinitely.
  """
  defp loop() do
    receive do
      {caller, msg} ->
        # Simulate a long running process.
        Process.sleep(1000)
        send(caller, {:response, msg})
    end

    loop()
  end
end
