
list = ~w/Hello there my name is alexander/
list_atoms = ~w/Hello there my name is alexander/a

IO.inspect(list)
IO.inspect(list_atoms)

sentence = "Alexander is a great programmer"
regex = ~r/great/

IO.puts(Regex.match?(regex, sentence))
