
# functions contcatenating strings

defmodule Strings do

  def concatenate(s1, s2) do
    # "#{s1}#{s2}"
    s1 <> s2
  end

end

str = Strings.concatenate("Hello", "world")
IO.puts str
