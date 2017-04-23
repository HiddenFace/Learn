known_first = 10
known_second = 12

a = known_first / 2
b = known_second - known_first
c = (known_second - known_first) / b

puts "#{a} + #{a} = #{known_first}"
puts "#{a} * #{b} + #{b} = #{known_second}"
puts "#{a} * #{b} - #{c} * #{a} = #{a}"