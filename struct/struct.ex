defmodule Fraction do
  # each module can only have one struct.
  # a struct may exist only in a module.
  defstruct a: nil, b: nil

  def new(a, b) do
    %Fraction{a: a, b: b}
  end

  def value(%Fraction{a: a, b: b}) do
    a/b
  end
end
