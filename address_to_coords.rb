require 'open-uri'
require 'json'


# puts "What is the address you would like to find the latitude and longitude of?"

# # Gets a string from the user and chomps off the carriage return at the end
# the_address = gets.chomp

# # Replaces spaces and other URL-illegal characters in the string
# url_safe_address = URI.encode(the_address)

# # Your code goes below. Hints:

def getLatLong(url)


raw_data = open(url).read
parsed = JSON.parse(raw_data)
results = parsed['results'][0]['geometry']['location']
return results

end

# url ="http://maps.googleapis.com/maps/api/geocode/json?address=$#{url_safe_address}"

# results = getLatLong(url)


# Let's store the latitude in a variable called 'the_latitude',
#   and the longitude in a variable called 'the_longitude'.

# the_latitude = results['lat']
# the_longitude = results['lng']

# # Ultimately, we want the following line to work when uncommented:

# puts "The latitude of #{the_address} is #{the_latitude} and the longitude is #{the_longitude}."
