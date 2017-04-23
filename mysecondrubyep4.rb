# a = 1
# while a < 100
# 	a = 1 + rand(1..100)
# 	puts a.to_i
# end
# i = 100
# while i > 1
# 	i -= 1
# 	a = i
# 	puts a.to_s + ' бутылок пива на стене... ' + a.to_s + ' бутылок пива!'
# 	puts 'Возьми одну. пусти по кругу'
# 	puts (a - 1).to_s + ' бутылок пива на стене'
# 	sleep 10
# end
# puts i.to_s + ' бутылок пива на стене...'


# while a < 10
# 	a += 1
# 	puts "'a'var" + a.to_s
# 	sleep 1
# endS

# <количество> бутылок пива на стене
# <количество> бутылок пива!
# Возьми одну, пусти по кругу
# <количество минус 1> бутылок пива на стене!

# i = 0
# a = []
# 100.times do
# 	a.push rand(0..1000)
# end
# p a


# puts 'Поговори с бабулей'
# ins = ''
# math = rand(1930..1950)
# while ins != 'ПОКА'
# ins = gets.chomp
#   if ins == ins.upcase
# 	 puts 'НЕТ, НИ РАЗУ С ' + math.to_s + ' ГОДА!'
#      else
#      if (ins == ins.downcase or ins == ins.capitalize)
# 	 puts 'АСЬ?! ГОВОРИ ГРОМЧЕ, ВНУЧЕК!'
#      end
#   end
# end
# puts 'Эх, стара я уже стала'
# При выходе из цикла выводит первый иф, как пофиксить не придумал.


# puts 'Введите начальный год'
# ins1 = gets.chomp
# puts 'Введите конечный год'
# ins2 = gets.chomp

# ins3 = ins2.to_i - ins1.to_i
#  while i <= ins2.to_i 
#  	i = ins1 + 4
#  end
loop do

  # User's input

  puts 'Please, write the first year:'
  first_year = gets.chomp.to_i
  puts sprintf('You wrote %s year as first', first_year)

  puts 'Please, write the second year:'
  second_year = gets.chomp.to_i
  puts sprintf('You wrote %s year as second', second_year)

  # Validations

  if first_year >= second_year
    puts 'ERROR: First year must be less than second'
    puts 'Retry...'
    redo
  end

  if second_year - first_year <= 4
    puts 'ERROR: Difference between years less than or equal 4'
    puts 'Retry...'
    redo
  end

  # Output
  first_year.upto(second_year) do |year|
    if year % 4 == 0
      next if (((year / 4) % 100) % 5 == 0 && ((year / 4) % 100) % 10 != 0)
      puts year
    end
  end
end
