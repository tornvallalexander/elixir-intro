# when writing modules in elixir, we should follow a few different best practices
# especially when it comes to naming

defmodule Ecommerce.Checkout do
  def add_tax(price \\ 0, percentage \\ 3) do
    price * convert_percentage_to_rate percentage
  end

  def convert_percentage_to_rate(percentage) do
    1 + (percentage / 100)
  end
end

IO.puts Ecommerce.Checkout.add_tax 43, 1.04
