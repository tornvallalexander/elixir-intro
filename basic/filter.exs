votes = [
  %{district: 1, candidate: 1, votes: 100},
  %{district: 1, candidate: 2, votes: 120},
  %{district: 1, candidate: 3, votes: 105},
  %{district: 2, candidate: 2, votes: 95},
  %{district: 2, candidate: 1, votes: 85},
  %{district: 2, candidate: 3, votes: 110},
  %{district: 3, candidate: 1, votes: 60},
]

filtered = Enum.filter(votes, fn vote -> vote.candidate >= 2 end)

filtered |> IO.inspect

total_votes = 
  votes
  |> Enum.reduce(0, &(&1.votes + &2))

total_votes |> IO.inspect
