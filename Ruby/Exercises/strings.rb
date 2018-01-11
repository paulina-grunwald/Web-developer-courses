######################## STRINGS #######################

#####create new string#####
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

#####Escape characters
puts "Paulina said: \"I love ruby\""

puts "Paulina said:\n \"I love ruby\""

puts

#Upper case characters are higher than lower case
p "A" < "a"
#=>true

#####Concatenate STRINGS#####
first_name = "Paulina"
last_name = "Grunwald"
puts first_name + " " + last_name
puts first_name + " " + last_name << "Web Developer"

first_name.concat(" Anna")
puts first_name

puts first_name.prepend(last_name)
puts first_name

puts

#####The .lenght and .size Method#####
a = " I love Ruby!"
#.lenght and .size are the same methods
puts a.length
#=>13
puts a.size
#=>13
puts a.length.next
#=>14
puts a.length.odd?
#=>true

puts

####Extract single character from the String#####
string = "I like pizza and sushi"
puts string.length
#slice and [] perform the same operation
puts string[0]
#=>I
puts string.slice(0)
#=>I
puts string[-1]
#=>i
puts string[50]
#=>empty

#####Extract multiple characters from the String#####
puts string[3,7]
puts string.slice(2,7)
#prints entire string
puts string[0,string.length]
puts string[-7,5]

puts

#####Extract Multiple Characters with Range Objects#####
text = "Once upon a time in the land far far away..."
#add range objects that prints part of text string
puts text[5..15] #include character at position 15!
puts text.slice(5..15)
puts text[5...15]
puts text.slice(5...15)
puts text[4...1000]

puts

##### Overwrite Characters in String with Bracket Syntax#####
word = "shiba inu"
p word
word[0] = "S"
p word
#=>Shiba inu"
#Replace first  character
word[0...0] = "I love "
puts word
#=>I love Shiba inu

####Case methods#####

#Capitalize first letter
puts "hello".capitalize
#=>Hello

#swapcase method
puts "HeLLo".swapcase
#=>hEllO

#reverse method
puts "helloooo".reverse
#=>oooolleh

#method chanining
puts "hello".upcase.reverse
#=>OLLEH

puts


##### The .include? Method on a String#####
name = "Paulina"
#check if name string include "a"
p name.include?("a")
#=>true
p name.downcase.include?("p")
#=>true

puts

#####The .empty? And .nil? Methods on a String#####
p "".empty?
#=>true
p "".nil?
#=>false

name = "Paulina"
name_1 = name[100,5]
puts name_1.nil?
#=>true
