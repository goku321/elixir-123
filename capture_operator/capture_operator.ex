defmodule CaptureOperator do
  def add_one(x) do
    # fn is analogous to fn x -> x + 1 end
    func = &(&1+1)
    func.(x)
  end
end
