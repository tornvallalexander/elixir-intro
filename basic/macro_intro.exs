defmodule Util do
  defmacro reverse({:+, context, [a, b]}) do
    {:-, context, [a, b]}
  end

  # reversing with quote and unquote macro (automatically created te 'Abstract Syntax Tree' for us)
  defmacro reverse2({:+, context, [a, b]}) do
    quote do
      unquote(a) - unquote(b)
    end
  end
end
