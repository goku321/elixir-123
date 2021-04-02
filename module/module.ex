defmodule ExampleModule do
  @moduledoc """
  Elixir code is packaged into modules.
  A module cannot span multiple files.
  Module name should start with a capital letter.
  """
  @doc """
  Functions cannot exists outside a module.
  A function name cannot start with a capital letter.
  exampleFunc is an exported function.
  """
  def exampleFunc() do
    1 + 1
  end

  @doc """
  unexportedFunc is an un-exported function, private to this module.
  """
  defp  do
    2 + 2
  end
end
