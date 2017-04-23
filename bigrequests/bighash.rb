require 'json'

# leads = File.read('lead_for_refinans.json').split("\n")
leads = [
    '{"surname":"Антипенко","name":"Ирина","patronymic":"Владимировна","birthday":"14","birthmonth":"11","birthyear":"1987","mobile":"+7\ (921)\ 644-57-61","email":"ia1987@ya.ru","credit":"30000","ip":"217.118.78.40"}',
    '{"surname":"Шалаева","name":"Оксана","patronymic":"Сергеевна","birthday":"6","birthmonth":"11","birthyear":"1991","mobile":"+7\ (895)\ 165-26-94","email":"ksuxa5550@yandex.ru","credit":"160000","ip":"188.40.59.147"}',
'{"surname":"Грудович","name":"Юрий","patronymic":"Михайлович","birthday":"9","birthmonth":"10","birthyear":"1954","mobile":"+7\ (921)\ 952-09-80","email":"grudovich.u@olimpauto.ru","credit":"500000","ip":"188.40.59.147"}',
'{"surname":"сорокин","name":"владимир","patronymic":"викторович","birthday":"23","birthmonth":"10","birthyear":"1979","mobile":"+7\ (981)\ 970-87-84","email":"gnom.1979@bk.ru","credit":"20000","ip":"188.40.59.147"}',
'{"surname":"Захаров","name":"Михаил","patronymic":"Михайлович","birthday":"26","birthmonth":"4","birthyear":"1977","mobile":"+7\ (904)\ 514-98-82","email":"mik5687@yandex.ru","credit":"30000","ip":"188.40.59.147"}',
'{"surname":"Шалаева","name":"Оксана","patronymic":"Сергеевна","birthday":"6","birthmonth":"11","birthyear":"1991","mobile":"+7\ (951)\ 652-69-49","email":"ksuxa5550@yandex.ru","credit":"160000","ip":"188.40.59.147"}',
'{"surname":"Мирзорахимов","name":"Мараджаб","patronymic":"Марахимович","birthday":"1","birthmonth":"4","birthyear":"1956","mobile":"+7\ (921)\ 221-46-76","email":"mirzorahimov56@mail.ru","credit":"100000","ip":"188.40.59.147"}',
'{"surname":"давыдов","name":"ильяс","patronymic":"САЙФУЛОВИЧ","birthday":"20","birthmonth":"6","birthyear":"1962","mobile":"+7\ (950)\ 038-59-58","email":"ilia0405@mail.ru","credit":"200000","ip":"188.40.59.147"}',
'{"surname":"Слепцова","name":"Людмила","patronymic":"Геннадьевна","birthday":"24","birthmonth":"3","birthyear":"1983","mobile":"+7\ (921)\ 883-73-95","email":"lydmila-slepsova@mail.ru","credit":"10000","ip":"77.232.154.57"}',
'{"surname":"Федотова","name":"Александра","patronymic":"Вячеславовна","birthday":"11","birthmonth":"5","birthyear":"1991","mobile":"+7\ (950)\ 025-07-73","email":"zerocodi@mail.ru","credit":"20000","ip":"77.241.45.17"}',
]


leads.each do |lead|
  body = JSON.load(lead)
  puts body
end
p leads.size



minimal_amount = 20000

result = []

leads.each do |lead|
  body = JSON.load(lead)
    if body['credit'].to_i > minimal_amount
       result.push(body)
  
end



minimal_amount = 20000

result = []

leads.each do |lead|
  body = JSON.load(lead)  
  # result.push(body) if body['credit'].to_i > minimal_amount && ||
end

result