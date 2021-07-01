defmodule HierarchicalUpdate do
  def new_map() do
    %{
      1 => %{name: "Luke", age: 26},
      2 => %{name: "Liea", age: 27},
    }
  end

  def update_age_by_id(%{} = map, id, age) do
    put_in(map[id].age, age)
  end
end
