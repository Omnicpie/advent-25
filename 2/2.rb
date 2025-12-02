require 'benchmark'

ranges = File.read("part1.txt").split(',')


def log message
  if(ARGV.include?('-v'))    
    puts message
  end
end

def part_1 r
  count = 0
  r.each do |range|
    first, last = range.split('-')
    log "#{first} to #{last}"

    curr = first.to_i

    until curr. === last.to_i + 1 do
      log "checking #{curr}"
      if(curr.to_s.length % 2 == 0)
        p1, p2 = curr.to_s.chars.each_slice(curr.to_s.length / 2).map(&:join)

        if(p1 == p2)
          log "found matching #{p1}"
          count = count + curr.to_i
        end
      end

      curr = (curr + 1)
    end
  end

  count
end

def part_2 r
  count = []
  r.each do |range|
    first, last = range.split('-')
    log "#{first} to #{last}"

    curr = first.to_i

    until curr. === last.to_i + 1 do
      log "checking #{curr}"
      t = 2
      until t === curr.to_s.length + 1 do
        items = curr.to_s.chars.each_slice(curr.to_s.length / t).map(&:join).uniq

        if(items.length === 1)
          log "found matching #{items.first}: #{curr}"
          count.push curr.to_i
        end
        t = t + 1
      end


      curr = (curr + 1)
    end
  end

  uniqed = count.uniq

  uniqed.sum
end

puts "answer: #{part_2 ranges}"