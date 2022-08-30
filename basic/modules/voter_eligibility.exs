age = IO.gets("What is your age?: ")

defmodule Voter do
  def eligibility(age) when is_binary(age) or is_integer(age) do
    do_eligibility(age)
  end

  def eligibility(_age) do
    "Invalid input"
  end

  defp do_eligibility(age) when is_binary(age) do
    age |> Integer.parse |> do_eligibility
  end

  defp do_eligibility({age, _}) do
    do_eligibility(age)
  end

  defp do_eligibility(age) when is_integer(age) and age < 18 do
    "You are too young to vote"
  end

  defp do_eligibility(age) when is_integer(age) and age < 25 do
    "You can vote"
  end

  defp do_eligibility(:error) do
    "There was en error"
  end

  defp do_eligibility(_age) do
    "You can vote and run for office"
  end
end

message = Voter.eligibility(age)
IO.puts(message)
