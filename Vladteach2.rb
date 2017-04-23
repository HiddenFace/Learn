
# a = []
# i = 0 - counter
# 100.times do 
# 	a.push(i * 2)
# 	i = i + 1
# end
# p a.reverse

# p Array.new(100).map.with_index{ |x, i| x = i * 2}.reverse


a = []
100.times do |i|
  a << i * 2
end
p a.reverse