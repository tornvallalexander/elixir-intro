# turning our anonymou function into a named one

defmodule Voter do
  def eligibility(age) do
    case Integer.parse(age) do
      {age, _} when age < 18 -> "You can't vote yet"
      {age, _} when age < 25 -> "You can vote!"
      {_age, _} -> "You can vote and run for office!"
      :error -> IO.puts("There was an error")
      _ -> IO.puts("default")
    end
  end
end

message = "Your age: " |> IO.gets |> Voter.eligibility

IO.puts(message)
