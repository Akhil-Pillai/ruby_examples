#City abbreviations meaning
city_id = {
	'DL' => 'Delhi',
	'BOM' => 'Bombay',
	'COK' => 'Cochin',
	"KOL" => 'Kolkata'
}

#States the capital belongs to
state = {
	"Delhi" => "Delhi",
	"Bombay" => "Maharashtra",
	"Cochin" => "Kerala",
	"Kolkata" => "West Bengal"
}

#printing some cities
puts "*" *10
puts "DL means #{city_id['DL']}"
puts "*" *10


puts "Adding BLR => Bangalore to the dictionary"

#adding city id
city_id['BLR']='Bangalore'

#adding city id 'BLR' into state
state['Bangalore'] = 'Karnataka'

#printing the newly added city id
puts '*' * 10
puts "The newly added hash is #{city_id['BLR']}"
puts '*' *10

#displaying the whole dictionary
puts "The whole dictionary is\n#{city_id}"
puts '*' *10

#nesting both the dictionaries
puts "The state COK belongs to is #{state[city_id['COK']]}"
puts '*' *10

#using for loop to display
city_id.each do |abbr,city| 
	puts "#{city} is abbreviated as #{abbr}"
end
puts '*' *10

#using a loop and data from a dictionary to get another dictionary
city_id.each do |abbr,city|
		states = state[city]
		puts "#{city} belongs to #{states}"
	end
puts '*' *10