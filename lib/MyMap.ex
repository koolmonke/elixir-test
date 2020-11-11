defmodule MyMap do
  def map(f, list), do: apply_f_to_list(f, list, [])

  defp apply_f_to_list(f, list, acc) do
    case list do
      [] -> []
      [head | []] -> acc ++ [f.(head)]
      [head | tail] -> apply_f_to_list(f, tail, acc ++ [f.(head)])
    end
  end
end
