  require 'open-uri'
require 'json'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# require './address_to_coords.rb'
# require './coords_to_weather.rb'

# puts "Is this working?"
# puts "IS this the right file"
# puts "Let's get the weather forecast for your location."

# puts "What is the latitude?"
# the_latitude = gets.chomp

# puts "What is the longitude?"
# the_longitude = gets.chomp

# latlong = [the_latitude, the_longitude]

# Your code goes below. Use the same approach as you did in
#   address_to_coords.rb to read from a remote API and parse
#   the results.
#def getWeather(the_latitude, the_longitude)

def getWeather(latlong)

the_latitude = latlong[0]
the_longitude = latlong[1]
url = "https://api.forecast.io/forecast/5aa54c83e7ecb48281605efa3bc96e2b/#{the_latitude},#{the_longitude}"

raw_data = open(url).read
parsed = JSON.parse(raw_data)

return parsed
end

# parsed = getWeather(latlong)
# the_temperature = parsed['currently']['temperature']

# the_hour_outlook = parsed['hourly']['data'][0]['summary']
# the_day_outlook = parsed['daily']['data'][0]['summary']



# # Ultimately, we want the following line to work when uncommented:

#  puts "The current temperature at #{the_latitude}, #{the_longitude} is #{the_temperature} degrees."
#  puts "The outlook for the next hour is: #{the_hour_outlook}"
#  puts "The outlook for the next day is: #{the_day_outlook}"
