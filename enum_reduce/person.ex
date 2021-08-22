defmodule Person do
  defstruct name: nil, age: nil

  # new creates a person struct with given name and age.
  def new(name, age) do
    %Person{name: name, age: age}
  end
end
