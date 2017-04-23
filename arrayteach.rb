a = Array.new(100){ rand(0..1000) }
tru = 0
dif1 = 1000
p ari = a.reduce(:+) / 100
a.each do |i|
  if i > ari
  	tru = i       
   	dif = (ari - i).abs
   	if dif1 > dif
   		dif1 = dif
   	end
  end
end
p tru
p dif1

# a = Array.new(10){ rand(0..1000) }
# tru = 0
# dif1 = 1000
# mean_max = 0
# ari = a.reduce(&:+) / 10
# a.each do |i|
#   if i > ari
#     tru = i       
#     dif = (ari - i).abs
#     if dif1 > dif
#       dif1 = dif
#       mean_max = i
#     end
#   end
# end
# p mean_max
# p ari
# p dif1
# p a


max, min, size, max_mean = 5000, 0, 10, 0
diff    = max
array   = Array.new(size){ rand(min..max) }
average = array.inject(&:+) / array.length

array.each do |i|
  current_diff   = (average - i).abs
  max_mean, diff = i, current_diff if current_diff < diff
end

p array
p average
p max_mean