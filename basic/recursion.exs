
defmodule Util do
  def sum(list), do: do_sum(list, 0)

  defp do_sum([head | tail], total) do
    # before: head + do_sum(tail)
    do_sum(tail, total + head)
  end
  defp do_sum([], total), do: total

  # Note on dealing with recursion:
  # we have a "base case", the one that deals with what should happen when recursion is no longer appropriate
  # the other case is the "recursive case", the one on top
  # best practice to handle base case first, to avoid infinite recursion
  #
  # we can also optimize recursion with something called "tail call optimization", done automatically in 
  # elixir, when we follow a specific pattern that can be seen above
end

[1,2,3,4,5,6] |> Util.sum |> IO.inspect
