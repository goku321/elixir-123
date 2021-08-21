defmodule Person do
  defstruct name: nil, age: nil

  def new(name, age) do
    %Person{name: name, age: age}
  end
end
