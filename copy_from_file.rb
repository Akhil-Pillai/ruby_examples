old_file, new_file = ARGV

puts "The new file name is #{new_file} and the old file name is #{old_file}"
puts "Is this correct if yes then press enter else press CTRL-C "

$stdin.gets

puts "Let me check if the #{old_file} exists or not!"
puts "#{old_file} exists? #{File.exist?(old_file)}"

if File.exist?(old_file)
	then
		fin = open(old_file,'r')
		fo  = open(new_file,'w')
		fo.write(fin.read)
		fo.close
		fin.close
else
	puts "User sahab kuch bhi daaloge thodi na chalega? <(._.)>"
end

puts "Userpal here are the contents of #{new_file}"
fo = open(new_file)
puts(fo.read)