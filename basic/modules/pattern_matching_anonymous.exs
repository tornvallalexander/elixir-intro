
logo_file = fn 
  (:democrat) -> "donkey.png"
  (:republican) -> "elephant.png"
  (:libertarian) -> "statue.png"
  (:green) -> "flower.png"
end

IO.puts(logo_file.(:libertarian))
