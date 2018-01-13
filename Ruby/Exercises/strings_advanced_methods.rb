########################### STRINGS ADVANCED METHODS  #################################

##### The .split Method on a String #####

=begin
A String object holds and manipulates an arbitrary sequence of bytes, typically representing characters.
String objects may be created using String::new or as literals.
=end

sentence = "Hi, I love Ruby. It's cool language."

# Split sentence by space
p sentence.split
#=> ["Hi,", "I", "love", "Ruby.", "It's", "cool", "language."]

p sentence.split(".")
#=> ["Hi, I love Ruby", " It's cool language"]

puts

##### Iterate over String Characters #####

"I love Ruby".each_char { |chr| p chr  }

name = "Max"
p name.split("")
#=> ["P", "a", "u", "l", "i", "n", "a"]


# Iterate over characters of the string
letter = name.split("")
letter.each {|letter| puts "#{letter} is cool!"}
#=> M is cool!
#=>a is cool!
#=> x is cool!

puts

##### The .join Method on an Array #####

names = ["Max", "Matt", "Adam"]
p names.join("--")
#=> "Max--Matt--Adam"

# Create function that will join elements of a array and use custom delimiter
def custom_join(array, delimiter = "--")
  new_string = array.join(delimiter)
  return new_string
end

a = ["S", "U", "S", "H", "I"]
p custom_join(a, "-")
#=> "S-U-S-H-I"

# Other solution
def custom_join(array, delimiter = "")
  string = ""
  last_index = array.length - 1
  array.each_with_index do |elem, index|
    string << elem
    string << delimiter unless index == last_index
  end
  string
end
names = ["Max", "Matt", "Adam"]
p custom_join(names)
#=> "MaxMattAdam"

puts


##### The .count Method on a String #####


##### The .index and .rindex Methods on a String####

##### The .insert Method on a String #####

##### The .squeeze Method #####

#####  The .clear Method on a String #####

##### The .delete Method on a String #####
