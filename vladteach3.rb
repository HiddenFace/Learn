# m = 10
# n = 10
# a = Array.new(m).map!{Array.new(n)}
# 1.times do
# n.push rand(0..10)
# end
# p a
# c = []
# 10.times do
# 	c.push a
# a = []
# 10.times do
# 	a.push rand(0..10)
# end
# b = []
# 10.times do
# 	b.push rand(0..10)
# end
# p c
# v = []
# b = []
# 10.times do 
#  	b.push rand(0..10)
#  end
# 10.times do
# 	v.push b
# end
# p v
# примеры Влада
# v = Array.new(10)

# v.map do |x|
#   b = []
# 	10.times do 
#  		b.push(rand(0..10))
#  	end  
# 	x = b
# end

# p v

# Array.new(10){ Array.new(10){ rand(0..10) } }

# двумерный массив 50х50 и найти в нем максимальное значение и минимальное+ вывод на экран.
# без методов мах и мин!
# Array.new(50){ Array.new(50){ rand(0..1000) } }.each { |x| puts x.join(' ') }
# matrix = Array.new(50){ Array.new(50){ rand(0..1000) } }
# matrix.each do |inner_array|
#   puts inner_array.join(' ')
# a = inner_array
# end

# v = []
# 50.times do
#   b = []
# 	50.times do 
#  		b.push rand(0..500)
#  	end  
# 	v.push b
# end
# p v

#a = Array.new(50){ Array.new(50){ rand(0..1000) } }
# min = a[0]
# i = 1
# while i < a.size
#   min = a[i] if a[i] < min
#   i += 1
# end
# puts min

# Взять число из массива, сравнить его с 1, если оно больше то перезаписать на большее, далее сравнивать уже большее, если меньше пропускать, до тех пор пока пока не найдет еще большее число, далее перезапись и так далее.
# a = [1,2,3,4,5]

# a.each do |i|
#   p i
# end

# puts ''

# for i in a
#   p i 
# end

# puts ''

# a.length.times do |i|
#   p a[i]
# end

# puts ''

# b = 0
# while b < a.length
#   p a[b]
#   b = b + 1
# end

# puts ''

# c = a.each

# loop do
#   p c.next
# end
# a = Array.new(100){ rand(0..1000) }
# b = 0
# a.each do |i|
#   if b < i
#     b = i
#   end
# end
# p b
# p a.max

a = Array.new(100){ rand(0..1000) }
b = nil
a.each do |i|
  b = i if b.nil?
  if b > i
    b = i
  end
end
p b
p a.min

# a = Array.new(100){ rand(0..1000) }
# min = a[0]
# i = 1
# while i < a.size
#   min = a[i] if a[i] < min
#   i += 1
# end
# puts min

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