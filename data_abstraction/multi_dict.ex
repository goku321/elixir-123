defmodule MultiDict do
  def new(), do: %{}

  def add(dict, key, value) do
    # using shorthand capture operator for anonymous function.
    Map.update(dict, key, [value], &[value | &1])
  end

  def get(dict, key) do
    Map.get(dict, key, [])
  end
end
