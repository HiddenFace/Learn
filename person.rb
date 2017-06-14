require './utils'
require 'json'
require 'time'

class Person

  attr_accessor :first_name, :last_name, :patronymic, :birthdate, :location


  class << self

    attr_accessor :persons

    # def generate(amount:)
    #   self.persons = []
    #   amount.times do
    #     person = self.new(first_name: Utils.generate_first_name,
    #                       last_name:  Utils.generate_last_name,
    #                       patronymic: Utils.generate_patronymic,
    #                       location:   Utils.generate_location,
    #                       birthdate:  Utils.generate_birthdate)

    #     self.persons.push(person)
    #   end
    # end

  def all
    self.persons = []
    if self.persons.empty? == true
      Person.read.each do |_person|
      _person = _person.inject({}){ |memo, (k, v)| memo[k.to_sym] = v; memo}
      _person[:birthdate] = Time.parse(_person[:birthdate])
      self.persons.push(Person.new(_person))
      end
    end
    self.persons
  end

  # def select(first_name:, last_name:)
  #   self.persons || self.all
  #   self.persons.select do |person|
  #     person.first_name == first_name && person.last_name == last_name
  #   end
  # end
  def select(args)
    self.persons || self.all
    self.persons.select do |person|
      args.all? do |k, v|
      person.send(k) == v
      end
    end
  end

    def as_json
      self.persons.map(&:to_hash).to_json
    end

    def store
      File.open('persons.json', 'w+') do |file|
        file.puts(self.as_json)
      end
    end

    def read
      JSON.load(File.read('persons.json'))
    end

  end

  def initialize(first_name: , last_name:, patronymic:, birthdate:, location:)
    @first_name = first_name
    @last_name  = last_name
    @patronymic = patronymic
    @birthdate  = birthdate
    @location   = location
  end

  def full_name
    self.first_name + ' ' + self.last_name + ' ' + self.patronymic
  end

  def age
    age = (Time.now.to_i - self.birthdate.to_i)/60/60/24/365
  end

  def details
    _details = ''
    _details << self.full_name + "\n"
    _details << self.location + "\n"
    _details << self.age.to_s
    _details
  end

  def to_hash
    { first_name: @first_name, last_name: @last_name, patronymic: @patronymic, birthdate: @birthdate.iso8601, location: @location }
  end

end


# p Person.persons
# p Person.as_json
# p Person.read
# Person.select('Станимир').each do |person|
#   puts person.details
# end

# puts Person.select(first_name: 'Милан', last_name: 'Моржовый').map(&:details)
# puts Person.select(first_name: 'Хуй', last_name: 'Моржовый').map(&:details)
# puts Person.select(first_name: 'Милан', last_name: 'Моржовый').map(&:details)


# метод all? Enumerable.
# метод send
# хэш который будет лежать в переменной аrgs
# def select(args:)
#   "args хэш, хэш обходим eachом и внутри метода select испольхуем метод all? на все аргументы и внутри этого all?(это тоже итератор) сравниваем каждый из
#     них с персон и если all? вернет тру, то тогда селект будет считать, что это валидная запись."
#     args один аргумент, но этим аргументом будет большой хэш ластнаме = хуемое и.т.п т.е. и в этом хеше все вычисления.
#  send - т.е.при обходе своего хэша берем ключ этого хэша и прокидывать в метод send таким образом будет вызываться метод и можно получить
#     значение непосредственного персона и просравнять его со значением хеша, который я передал аргументом и соответсвенно если они равны то в контексте метода
#      алл все заработает и если все значения равны все заселектится.

#     Enumerable all? [1,2,3,4].all? do i == число? end
#       ключ хеша который передам аргументом и буду сравнивать с аттрибутом персона
#       ессли в методе all? буду брать ключ хеша который передам аргументом и буду сравнивать с аттрибутом персона, который находится в итерации.



puts Person.select(first_name: 'Лабута', last_name: 'Егоров', age: 36).map(&:details)
#   Person.send(:all.first)
#   a = Person.send(:all).first
#   #<Person:0x00000006942b30 @first_name="Мадлен", @last_name="Иванов", @patronymic="Адамович", @birthdate=1974-09-27 00:00:00 +0300, @location="Всеволожск">
#   a
# => #<Person:0x00000006942b30 @first_name="Мадлен", @last_name="Иванов", @patronymic="Адамович", @birthdate=1974-09-27 00:00:00 +0300, @location="Всеволожск">
# a.send(:first_name)   => "Мадлен"
# b = [:first_name, :last_name, :age]   => [:first_name, :last_name, :age]
# b.map{ |x| a.send(x)}   => ["Мадлен", "Иванов", 42]
# х = это метод(фирстнаме, ластнаме, эйдж)