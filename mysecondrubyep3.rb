# puts 'Приветик, ваша фамилия?'
# name = gets.chomp
# puts 'Ваша фамилия ' + name + '?  Отлично!'
# puts 'Ваше имя?'
# name2 = gets.chomp
# puts 'А по батюшке?'
# name3 = gets.chomp
# lenght = name.length + name2.length + name3.length
# puts 'Рад познакомиться с Вами, ' + name + ' ' + name2 + ' ' + name3 + '. А вы знали, что ваше Ф.И.О состоит из ' + lenght.to_s + ' символов? :)'


# puts 'Привет, как Вас зовут?'
# name = gets.chomp
# name2 = gets.chomp
# name3 = gets.chomp
# puts 'Ваше Ф.И.О: ' + name + name2 + name3 + '?  Спасибо за информацию!'
# puts 'Рад познакомиться с Вами, ' + name + name2 + name3 + '.  :)'

# puts 'Сейчас рабочее время, что вы хотели?'
# answer = gets.chomp
# puts 'Чего, чего?! Что значит:' + answer + '? Ты уволен!!!'
# answer2 = gets.chomp
# puts 'Чё сказал? Тк значит говоришь:' + answer2 + '? Пошёл вон отсюда!'


# Глава 1:  Числа                             page 1
# Глава 2:  Буквы                            page 72
# Глава 3:  Переменные                      page 118

linewidth = 50
str0 = 'Содержание'
str = 'Глава 1:  Числа'
str2 = 'page 1'
str3 = 'Глава 2:  Буквы'
str4 = 'page 72'
str5 = 'Глава 3:  Переменные'
str6 = 'page 118'

puts str0.center(linewidth)
# puts str.ljust(linewidth / 2 - str.length.to_i) + str2.rjust(linewidth / 2 - str2.length.to_i)
puts str.ljust(linewidth / 2) + str2.rjust(linewidth / 2)
puts str3.ljust(linewidth / 2) + str4.rjust(linewidth / 2)
puts str5.ljust(linewidth / 2) + str6.rjust(linewidth / 2)