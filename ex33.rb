def add_to_array (num_elements)
	elements = []
	i = 0
	num = nil
	for i in (0...num_elements)
		puts "Enter the element you want to add : "
		num = gets.chomp.to_i
		elements.push(num)
	end
	return elements
end

puts "Enter number of elements: "
num_elements = gets.chomp.to_i
elements = add_to_array(num_elements)
puts elements
puts elements[-1]