require 'json'
json = File.read("persons_JSON.json")
hash = JSON.load(json)
p hash
