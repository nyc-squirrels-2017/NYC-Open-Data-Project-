require 'open-uri'
require 'json'
require 'pry'
require_relative 'model/toilet'

BASE_URL = "https://data.cityofnewyork.us/resource/r27e-u3sy.json"
# unparsed_data = open(BASE_URL).read
# json_data = JSON.parse(unparsed_data)

puts "BOROUGH FIGHT!!!!!!!!!!!! WHICH BOROUGH IS THE SHIT??"
sleep(1.0)
puts "What is the first borough?"
borough1 = gets.chomp.downcase.capitalize

puts "What is the second borough?"
borough2 = gets.chomp.downcase.capitalize


response = JSON.parse(open("#{BASE_URL}").read)
# test2 = response.map {|hash| Toilet.new(hash)}
# puts test2

#
# def return_numbers (file, request1, request2)
#

sleep(0.5)

  def count(borough, data)
    data.select { |hash| hash['borough'] == borough }.count
  end

  borough1_count = response.select { |hash| hash['borough'] == borough1 }.count
  borough2_count = response.select { |hash| hash['borough'] == borough2 }.count

  puts "fetching complex algorithms...\n"
  sleep(1.0)
  puts "calculating data...\n"
  sleep(1.0)
  puts "factoring lit-ness...\n"
  sleep(1.0)
  puts "forecasting catastrophic events...\n"
  sleep(1.0)
  puts "measuring swagger...\n"
  sleep(1.0)

  puts "#{borough1}'s POWER LEVEL' : #{count(borough1, response) * 100}"
  puts "#{borough2}'s POWER LEVEL' : #{count(borough2, response) * 100}"
  sleep(1)

  puts "calculating who's the shit..."
  sleep(2)

  if count(borough1, response) > count(borough2, response)
    puts "#{borough1} IS THE SHITT"
    winner = borough1
  else
    puts "#{borough2} IS THE SHITT"
    winner = borough2
  end

  sleep(3.0)

  puts "BECAUSE IT HAS #{count(winner, response)} PUBLIC PARK TOILETS (no other factors were used in this calculation) "

sleep (2.0)
  puts "SO ITS LITERALLY THE SHIT..."
sleep (1.0)
puts "
             _____
           /      )
           |___  U?(____
            _\L.   |      \      ___
           / /"""'/\ .-''  |    |\  |
          ( /  _/u     |    \___|_)_|
           \|  \\      /   / \_(___ __)
            |   \\    /   /  |  |    |
            |    )  _/   /   )  |    |
            _\__/.-\'    /___(  |    |
            _/  __________/  \  |    |
          //  /  (            ) |    |
         ( \__|___\    \____ /__|____|
          \    (___\   |______)_/
           \   |\   \  \     /
            \  | \__ )  )___/
             \  \  )/  /__(
         ___ |  /_//___|   \_________
            _/  ( / OUuuuu  \
          `/----/''(____________)'


# end
# puts  "#{request}'s power level is #{response.select { |hash| hash['borough'] == request }.length * rand(100) + 9000}."
#
#
# puts return_number(request)
