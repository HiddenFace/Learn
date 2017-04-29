require './utils'
require 'json'
require 'time'

class Person

  attr_accessor :first_name, :last_name, :patronymic, :birthdate, :location

  def initialize(first_name: , last_name:, patronymic:, birthdate:, location:)
    @first_name = first_name
    @last_name = last_name
    @patronymic = patronymic
    @birthdate = birthdate
    @location = location
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
    {first_name: @first_name, last_name: @last_name, patronymic: @patronymic, birthdate: @birthdate.iso8601, location: @location}
  end

end

persons = []

100.times do
  person = Person.new(first_name: Utils.generate_first_name,
                      last_name:  Utils.generate_last_name,
                      patronymic: Utils.generate_patronymic,
                      location:   Utils.generate_location,
                      birthdate:  Utils.generate_birthdate).to_hash

  persons.push(person)
end

persons.each do |person|
  puts person
end

File.open("persons_JSON.json", "w+") do |file|
  file.puts(persons.to_json)
end