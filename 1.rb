start_val = 50
rotations = File.read("1.txt").split
num_zeros = 0


rotations.each do |line|
  direction = line[0]
  amount_string = line[1, 2000]
  amount = amount_string.to_i
  start_val = direction === "L" ? start_val - amount : start_val + amount

  if(start_val > 99) 
    start_val = start_val - 100
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