defmodule Factorial do
  defp fact_tail_rec(0, acc) do
    acc
  end

  defp fact_tail_rec(x, acc) do
    fact_tail_rec(x - 1, acc * x)
  end

  def of(x) when is_integer(x) and x > 0 do
    fact_tail_rec(x, 1)
  end
end
