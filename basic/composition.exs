
# unique districs in a list
# reduce to a map with the district id as key and total votes as value

votes = [
  %{district: 1, candidate: 2, votes: 105},
  %{district: 1, candidate: 2, votes: 125},
  %{district: 1, candidate: 1, votes: 85},
  %{district: 2, candidate: 2, votes: 55},
  %{district: 2, candidate: 2, votes: 100},
  %{district: 2, candidate: 3, votes: 95},
  %{district: 3, candidate: 1, votes: 85},
  %{district: 3, candidate: 2, votes: 130},
  %{district: 3, candidate: 3, votes: 140},
]

votes_without_district = [
  %{candidate: 2, votes: 105},
  %{candidate: 2, votes: 125},
  %{candidate: 1, votes: 85},
  %{candidate: 2, votes: 55},
  %{candidate: 2, votes: 100},
  %{candidate: 3, votes: 95},
  %{candidate: 1, votes: 90},
  %{candidate: 2, votes: 130},
  %{candidate: 3, votes: 140},
]

mapped_result = [
  %{candidate: 1, votes: 1050},
  %{candidate: 2, votes: 1200},
  %{candidate: 3, votes: 1050},
  %{candidate: 2, votes: 900},
  %{candidate: 1, votes: 850},
  %{candidate: 3, votes: 1100}
]

candidate_total = 
  votes
  |> Enum.filter(&(&1.district in [1, 2]))
  |> Enum.map(&Map.take(&1, [:candidate, :votes]))
  |> Enum.group_by(&(&1.candidate), &(&1.votes))

mapped_result 
  |> Enum.group_by(&(&1.candidate), &(&1.votes))
  |> Enum.map(fn {k, v} -> {k, Enum.sum(v)} end)
  |> Enum.into(%{})

mapped_result |> IO.inspect
