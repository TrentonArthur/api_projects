require 'open-uri'
require 'json'
require './address_to_coords.rb'
require './coords_to_weather3.rb'

puts "Let's get the weather forecast for your address."

puts "What is the address you would like to know the weather for?"
the_address = gets.chomp
url_safe_address = URI.encode(the_address)

url ="http://maps.googleapis.com/maps/api/geocode/json?address=$#{url_safe_address}"
# Your code goes below.
results = getLatLong(url)


# Let's store the latitude in a variable called 'the_latitude',
#   and the longitude in a variable called 'the_longitude'.

the_latitude = results['lat']
the_longitude = results['lng']

latlong = [the_latitude, the_longitude]

parsed = getWeather(latlong)
the_temperature = parsed['currently']['temperature']

the_hour_outlook = parsed['hourly']['data'][0]['summary']
the_day_outlook = parsed['daily']['data'][0]['summary']


# Ultimately, we want the following line to work when uncommented:
 puts "The current temperature at #{the_address} is #{the_temperature} degrees."
 puts "The outlook for the next hour is: #{the_hour_outlook}"
 puts "The outlook for the next day is: #{the_day_outlook}"
