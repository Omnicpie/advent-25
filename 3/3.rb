require 'benchmark'

def part_1
  lines = File.read("input.txt").split

  total = 0
  lines.each do |line|
    numbers = line.chars.map{ |str| str.to_i }
    max = numbers.first(numbers.size - 1).max
    rest = line.split(max.to_s, 2).last.chars.map{ |str| str.to_i }
    max_2 = rest.max
    num = "#{max}#{max_2}"
    total += num.to_i
  end

  total
end

puts Benchmark.measure { puts part_1 }