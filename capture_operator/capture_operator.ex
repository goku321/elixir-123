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

  def print_a_b(a, b) do
    IO.puts(a)
    IO.puts(b)
  end

  def update_name(m, val) do
    # usage 3 - capturing a function after fixing its arguments.
    # &1 and &2 are placeholders for arguments.
    # second argument to put (key) will always be fixed
    # so we can skip it while calling updater function.
    updater = &Map.put(&1, :name, &2)
    updater.(m, val)
  end

  def change_order(a, b) do
    # usage 4 - change the order of passed arguments using
    # arguments placeholders.
    x = &print_a_b(&2, &1)
    x.(a, b)
  end
end
