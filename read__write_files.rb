file_name = gets.chomp

print "We are going to write in #{file_name}" 
print "If you want to then press enter else CTRL-C"
gets

txt=open(file_name,'w')
print "enter some lines : "
line1 = gets
line2 = gets
txt.write(line1 + line2)
txt.close

txt = open(file_name,'r')
puts(txt.read.chomp)
txt.close

