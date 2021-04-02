defmodule ImportExample do
  # import a module using import keyword.
  import IO
  def addWithTwo(a) do
    sum(a)
  end

  @doc """
  sum is an un-exported method.
  """
  defp sum(a, b \\ 2) do
    puts(a + b)
  end
end
