def show(array)
    array.each do |inner_array|
        puts inner_array.join('|')
        
    end
end

array = Array.new(10){Array.new(10){|x| x + 1}}
array2 = []
array.each_with_index do |inner, i|
	[i]
d = array.map{|inner| inner[i]}
array2 << d
end
array = array2

puts ''
show array



