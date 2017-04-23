if ARGV[0]
a = ARGV[0].to_i
else 
	a = 1
end

while a < 10
	a += 1
	puts "'a'var" + a.to_s
	sleep 1
end