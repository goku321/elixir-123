defmodule PatterMatching do
  # pattern match a return type.
  def example1 do
    # var will be assigned a map only if return_map returns
    # a map, otherwise an error will be thrown.
    var = %{} = return_map()
    var
  end

  def example2 do
    # this will throw an error since return_number does not
    # returns a map.
    not_map = %{} = return_number()
    not_map
  end

  # pattern match a key inside a map.
  def example3 do
    x = 1
    # this says: map returned by calling return_map should have
    # a key :a with a value 1.
    # note: replacing x with a constant won't work.
    match = %{a: ^x} = return_map()
    match
  end

  defp return_map do
    %{:a => 1, :b => 2}
  end

  defp return_number do
    5
  end
end
