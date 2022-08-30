age = IO.gets("What is your age?: ")

defmodule Voter do
  def eligibility(age) when is_binary(age) do
    age |> Integer.parse |> eligibility
  end

  def eligibility({age, _}) do
    eligibility(age)
  end

  def eligibility(age) when is_integer(age) and age < 18 do
    "You are too young to vote"
  end

  def eligibility(age) when is_integer(age) and age < 25 do
    "You can vote"
  end

  def eligibility(:error) do
    "There was en error"
  end

  def eligibility(_age) do
    "You can vote and run for office"
  end
end

message = Voter.eligibility(age)
IO.puts(message)
