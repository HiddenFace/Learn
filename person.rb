require './utils'
require 'json'
require 'time'

class Person

  attr_accessor :first_name, :last_name, :patronymic, :birthdate, :location

  class << self

    attr_accessor :persons

    def all
      self.persons ||= []
      return self.persons unless self.persons.empty?

      Person.read.each do |person|
        person = person.inject({}){ |save, (attribute, value)| save[attribute.to_sym] = value; save}
        person[:birthdate] = Time.parse(person[:birthdate])
        self.persons << Person.new(person)
      end

      self.persons
    end

    def select(first_name:)
      self.persons || self.all
      self.persons.select do |person|
        person.first_name == first_name
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
    age = (Time.now.to_i - self.birthdate.to_i) / 60 / 60 / 24 / 365
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

puts Person.select(first_name: 'Станимир').map(&:details)
puts Person.select(first_name: 'Владислав').map(&:details)
puts Person.select(first_name: 'Станислав').map(&:details)

