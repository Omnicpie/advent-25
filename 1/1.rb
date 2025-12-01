start_val = 50
rotations = File.read("1-1.txt").split
num_zeros = 0

def log message
  if(ARGV.include?('-v'))    
    puts message
  end
end


rotations.each do |line|
  log "Processing: #{line}, starting #{start_val}"

  direction = line[0]
  amount_string = line[1, 2000]
  amount = amount_string.to_i
  
  distance_dir = (direction === "L" ? -1 : 1) 

  i = 0

  until i == amount
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
    i = i + 1
  end
  
  log "after #{line}: #{start_val}"
end
 
puts start_val
puts "password #{num_zeros}"