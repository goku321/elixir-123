defmodule Error do
  @moduledoc """
  Defines common error types.
  """
  import IO
  @error "io error"

  @doc """
  Prints the error.
  """
  def printError() do
    puts(@error)
  end
end
