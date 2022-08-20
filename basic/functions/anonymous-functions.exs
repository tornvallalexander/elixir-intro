
voting_rights = fn(age) -> 
  case Integer.parse(age) do
    {age, _} when age < 18 -> IO.puts("You can't vote yet")
    {age, _} when age < 25 -> IO.puts("You can vote!")
    {_age, _} -> IO.puts("You can vote and run for office!")
    :error -> IO.puts("There was an error")
    _ -> IO.puts("default")
  end
end

voting_rights.(IO.gets("What is your age?: "))
