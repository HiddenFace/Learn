# matrix = Array.new(3){ Array.new(3){ rand(0..1000) } }
# max = 0
# p matrix
# matrix.each do |inner_array|
#   p sprintf('%s inner array',inner_array)
#   inner_array.each do |i|
#     p sprintf('%s inner array value', i)
#     max = i if max < i
#   end
# end

# matrix = Array.new(10){ Array.new(10){ rand(0..99) } }.each { |x| puts x.join(' ') }
# matrix = Array.new(10){ Array.new(10){ rand(10..99) } }
# a = matrix.each_with_index do |x, i| 
#   puts "#{i}: #{x}"
# end
# p matrix

# matrix = Array.new(10){ Array.new(10){ rand(10..99) } }
# matrix.each do |inner_array|
#   inner_array.each_with_index do |x, i| 
#  p x = 0[0],1[1],2[2],3[3],4[4],5[5],6[6],6[6],7[7],8[8],9[9]
# end
# end

matrix = Array.new(10){ Array.new(10){ rand(10..99) } }

matrix.each_with_index do |x, i| 
   a = x[i]
   b = Array.new(10){Array.new(10)}.push a
   b.sort!
   a[i] = b[i]
   p matrix
   end
   

# создать еще один массив, в который положить наши числа, отсортировать, и подменить в наш массив.
 
# p m = Array.new(10){Array.new(10){|x| x + 1}}


