length = "What is the length? " |> IO.gets |> String.trim |> String.to_integer
width = "What is the width? " |> IO.gets |> String.trim |> String.to_integer

IO.puts "The area is #{length * width}"
