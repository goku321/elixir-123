defmodule CaptureOperator do
  def add_one(x) do
    # usage 1 - capturing an anonymous function.
    # fn is analogous to fn x -> x + 1 end
    func = &(&1+1)
    func.(x)
  end

  def print(x) do
    # usage 2 - capturing a function with a given name and arity.
    p = &(IO.puts/1)
    p.(x)
  end
end
