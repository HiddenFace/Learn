#a = []
#while a < 100
#	puts a + rand(1..1000)
#end
#while q < 1000
#	q = 1 + rand(1..1000)
#puts q.to_i
#end
#puts Array.new(100){ |index| index + rand(0..1000)}
#a = (1..1000).to_a
#b = (1..1000).to_a
#puts c = [[a + b]]
#100.times do
#	c = [rand(0..1000)]
#	puts c
#end

# 100.times do
# 	a = [rand(0..1000).to_s]
# 	b = [rand(0..1000).to_s]
# 	c = [[a], [b]]
# 	puts c
# end
puts Array.new(100).map{ |x| x = (0..100) }