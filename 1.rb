start_val = 50
rotations = File.read("1-1.txt").split
num_zeros = 0
dial_size = 100


rotations.each do |line|
  direction = line[0]
  amount_string = line[1, 2000]
  amount = amount_string.to_i
  
  distance = amount.remainder(dial_size)
  distance_dir = (direction === "L" ? -1 : 1) * distance;
  
  start_val = start_val + distance_dir

  if(start_val > 99)
    start_val = start_val.remainder(100).abs
  end

  if(start_val < 0)
    start_val = start_val + 100
  end

  if(start_val === 0)
    num_zeros = num_zeros + 1
  end

  puts "after #{line}: #{start_val}"
end
 
puts start_val

puts "password #{num_zeros}"