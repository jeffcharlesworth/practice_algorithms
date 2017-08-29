require 'benchmark'

def find_all_squares(a, b)
  squares_array = []
  squares_array << find_square(a, b)
  return "no whole squares in range" if squares_array.first == nil || b < 1
  while squares_array.last <= b
    squares_array << next_square(squares_array.last)
  end
  squares_array.pop
  squares_array
end

def next_square(num)
  square = num
  return (square + (Math.sqrt(square) * 2) + 1).to_i
end

def find_square (a, b)
  a = 1 if a < 1
  (a..b).find { |num| Math.sqrt(num) % 1 == 0 }
end

puts find_all_squares(2, 1000000000)
puts Benchmark.measure{ find_all_squares(2, 10000) }


def find_squares_dumb(a, b)
  squares_array = (a..b).find_all { |num| Math.sqrt(num) % 1 == 0 }
end

puts find_squares_dumb(2, 1000000000)
puts Benchmark.measure{ find_squares_dumb(2, 100_000_000) }


puts find_all_squares(2, 100_000_000_000_000)
