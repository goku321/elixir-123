defmodule PatterMatching do
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

  defp return_map do
    %{:a => 1, :b => 2}
  end

  defp return_number do
    5
  end
end
