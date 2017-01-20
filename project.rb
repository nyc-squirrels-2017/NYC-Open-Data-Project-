require 'open-uri'
require 'json'
require 'pry'

BASE_URL = "https://data.cityofnewyork.us/resource/r27e-u3sy.json"
# unparsed_data = open(BASE_URL).read
# json_data = JSON.parse(unparsed_data)


puts "What borough do you want to check out?"
request = gets.chomp.downcase.capitalize

response = open("#{BASE_URL}").read
test = JSON.parse(response)

# def return_number (file, request)
puts  "#{request}'s power level is #{test.select { |hash| hash['borough'] == request }.length * rand(100) + 9000}."
# end


# puts return_number(request)
