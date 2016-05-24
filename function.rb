def add(*arg)
	first, second, third = arg
	if first!= nil and second != nil and third != nil
		puts "#{first + second + third}"
	else
		puts "Arre paagal kum se kum 0 toh daal de"
	end
end

x = 1.0
y = 2.0
z = 3.0

add(x,y,z)
add(3,4,5)
add()
add(x+4, y+4, z+3)
add(x+y, y+z, x-2)
add(3, z, x)