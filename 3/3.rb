require 'benchmark'

lines = File.read("preview.txt").split

total = 0
lines.each do |line|
  numbers = line.chars.map{ |str| str.to_i }
  max = numbers.first(numbers.size - 1).max
  rest = line.split(max.to_s).last.chars.map{ |str| str.to_i }
  max_2 = rest.max
  num = "#{max}#{max_2}"
  total += num.to_i
end

puts total