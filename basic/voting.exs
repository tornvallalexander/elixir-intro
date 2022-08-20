age_input = "What is your age?: " |> IO.gets

# message =
 	# if age < 18 do
		# "You can't vote yet"
	# else
		# "You can vote"
# end

# elixir cond expression
# other_message = cond do
	# age < 18 -> "You can't vote right now"
	# age < 25 -> "You can vote right now"
	# true -> "You can vote right now and run for office"
# end

message = case Integer.parse(age_input) do
	{age, _} when parsed_age < 18 -> IO.puts("You can't vote yet")
	{age, _} when parsed_age < 25 -> IO.puts("You can vote!")
	{_age, _} -> IO.puts("You can vote and run for office!")
	:error -> IO.puts("There was an error")
	_ -> IO.puts("default")
end

IO.puts(message)
# IO.puts(other_message)

