######################## STRINGS #######################

#create new string
name = String.new("Paulina")
p name

#check string lenght
p "Lenght of the name string is #{name.length}"

#change integer to String
p 5.to_s.class

puts

#multi-line string
words = <<STR
This is my multiline string.
It will be outputed on multiple lines.
STR
puts words

puts

#Escape characters
puts "Paulina said: \"I love ruby\""
