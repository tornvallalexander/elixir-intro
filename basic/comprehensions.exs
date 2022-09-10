import Integer, only: [is_even: 1]
# using comprehensions to double numbers in list
list1 = [1, 2, 3, 4]
list2 = [2, 3, 4, 5]

doubled = for x <- list1, do: x * 2
IO.inspect(doubled)

both = for x <- list1, y <- list2, is_even(x), is_even(y), do: x * y
IO.inspect(both)

# more advanced exmample
propositions = [
  %{id: 1, state: "CA", description: "Highway Bond"},
  %{id: 2, state: "CA", description: "Eliminate Daylight Savings"},
  %{id: 3, state: "CA", description: "Fuel Tax"},
  %{id: 4, state: "WA", description: "Carbon Tax"},
  %{id: 5, state: "WA", description: "Grocery Tax"}
]

locations = [
  %{id: 1, state: "CA", address: "755 Morse St", ballot_type: 20},
  %{id: 2, state: "CA", address: "200 Onondaga Ave", ballot_type: 10},
  %{id: 3, state: "CA", address: "1261 Geneva Ave", ballot_type: 30},
  %{id: 4, state: "WA", address: "62 Santa Rosa St", ballot_type: 30}
]

state = "CA"
ballot_type = [20, 30]

polling_props = 
  for prop = %{state: ^state} <- propositions,
      location = %{state: ^state} <- locations,
      location.ballot_type in ballot_type do
    %{
      prop_id: prop.id,
      state: state,
      prop_description: prop.description,
      location_id: location.id,
      address: location.address
    }
end

IO.inspect(polling_props)
