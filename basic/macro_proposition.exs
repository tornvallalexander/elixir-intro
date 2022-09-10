defmodule Proposition do
  defstruct [:description, yes: 0, no: 0]

  def new(description) do
    %Proposition{description: description}
  end

  defmacro vote({:+, _context, [prop, qty]}), do: cast(prop, :yes, qty)
  defmacro vote({:-, _context, [prop, qty]}), do: cast(prop, :no, qty)

  defp cast(prop, vote, qty) do
    quote do
      Map.update!(unquote(prop), unquote(vote), &(&1 + unquote(qty)))
    end
  end
end
