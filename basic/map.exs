# double list items
list = [1, 2, 3, 4, 5, 6, 7]
list |> Enum.map(&(&1 * 2)) |> IO.inspect

# original solution with recursion:

defmodule Util do
  import Enum, only: [reverse: 1]
  def map(list, func) when is_list(list), do: do_map(list, func)

  defp do_map(list, transformed \\ [], _func)
  defp do_map([], transformed, _func), do: reverse(transformed)
  defp do_map([head | tail], transformed, func), do: do_map(tail, [func.(head)|transformed], func)
end

trippled = Util.map(list, &(&1 * 3))

trippled |> IO.inspect
