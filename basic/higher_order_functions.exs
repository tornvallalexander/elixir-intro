tally = %{will_ferrell: 1, kristen_wiig: 2}

count = Map.get(tally, :will_ferrell, 0) + 1
tally = Map.put(tally, :will_ferrell, count)
IO.puts(inspect(tally))

increment = fn amount ->
  fn num -> num + amount end
end
tally = Map.update(tally, :will_ferrell, 5, increment.(4))
IO.puts(inspect(tally))


# Higher order named functions

defmodule Util do
  def compose(data, outer_fun, inner_fun) do
    outer_fun.(inner_fun.(data))
  end
end

sentence = "Alexander is a great programmer"
word_count = Util.compose(sentence, &length/1, &String.split/1)
IO.puts(word_count)

