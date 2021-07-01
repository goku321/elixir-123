defmodule HierarchicalUpdate do
  # new_map returns a nested map data structure.
  def new_map() do
    %{
      1 => %{name: "Luke", age: 26},
      2 => %{name: "Liea", age: 27},
    }
  end

  # updates the given by using Kernel built-in method.
  # put_in traverses the structure to the given path
  # and updates the target value.
  # this update is still immutable, it does not mutate the
  # original data structure.
  def update_age_by_id(%{} = map, id, age) do
    put_in(map[id].age, age)
  end
end
