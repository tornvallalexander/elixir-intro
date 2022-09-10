
defmodule Calculate do
  def sum(data), do: Calculateable.sum(data)
end

# using protocols
#
# Steps:
# 1. Define the protocol
# 2. Implement protocol for different types of data
# 3. Call function

defprotocol Calculateable do
  def sum(data)
end

defimpl Calculateable, for: List do
  def sum(list), do: do_sum(list, 0)

  defp do_sum([], total), do: total
  defp do_sum([head | tail], total), do: do_sum(tail, total + head)
end

defimpl Calculateable, for: Tuple do
  def sum(tuple), do: tuple |> Tuple.to_list() |> Calculateable.sum()
end
