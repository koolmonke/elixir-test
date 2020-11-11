defmodule Qsort do
  def qsort([]), do: []

  def qsort([head | tail]) do
    {lesser, greater} = Enum.split_with(tail, &(&1 < head))
    qsort(lesser) ++ [head] ++ qsort(greater)
  end
end
