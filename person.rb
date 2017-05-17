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

  def select(first_name:, last_name:)
    self.persons || self.all
    self.persons.select do |person|
      person.first_name == first_name && person.last_name == last_name
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

puts Person.select(first_name: 'Милан', last_name: 'Веселов').map(&:details)
puts Person.select(first_name: 'Хуй', last_name: 'Моржовый').map(&:details)
puts Person.select(first_name: 'Милан', last_name: 'Орлов').map(&:details)
