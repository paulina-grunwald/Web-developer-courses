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
# Count method returns the number of occurences of the substring

p "Hello World".count("o")
#<= 2

p "Hello World".count("lo")
#<= 5

puts

sentence = "I Love Ruby and Python and Javascipt"

def custom_count(string, search_characters)
  total_count = 0
  string.each_char do |string|
    if string.include?(search_characters)
      total_count+=1
  end
  end
  return total_count
end

p custom_count(sentence, "a")
#<= 4



puts




##### The .index and .rindex Methods on a String####

sentence = "I love Ruby a lot"

# Find an index position of letter "I"
p sentence.index("I")
#<= 0
p sentence.index("o")
#<= 3 // returns first position of "o"

# Find the index position of 2nd "o" letter in the sentence string
p sentence.index("o", 4)
#<= 15

# .rindex works the same way as index but
# it works from the end of the string to the beginning.
# So actually it's revrese index method.

p sentence.rindex("o")
#<= 15

puts


def custom_index(string, substring)
  return nil unless string.include?(substring)
    length = substring.length
    string.chars.each_with_index do |char, index|
      sequence = string[index, length]
      return index if sequence == substring
  end
end

p custom_index(sentence, "o")
#<= 3




puts



##### The .insert Method on a String #####
# .insert method inserts a character or a string at specified index place in a another strings
# .inserts mutates original strings
typo = "GeorgWashington"
typo.insert(5, "e")
p typo



puts



##### The .squeeze Method #####
# .squeeze method removes all characters that occur more than once
# in a string

sentence = "II loove Ruuuby"
puts sentence.squeeze
#<= I love Ruby

sentence_1 = "I loooove Ruby"

puts sentence_1.squeeze("o")
#<= I love Ruby


def custom_squeeze(string)
  return string.squeeze

end

p custom_squeeze(sentence)
#<= "I love Ruby"


words = "Ruuby is tthee proograming laaanguage"
def squeeze(string)
  # Create empty string
  final = ""
  # Split by characters
  chars = string.split("")
  # Iterate over each character taking into the consideration index
  chars.each_with_index {|char, index| char == chars[index+1] ? next : final << char}
  final
end

puts squeeze(words)
#<= Ruby is the programing language



puts

#####  The .clear Method on a String #####
# .clear method clears the content of the string and returns empty strings
# .clear mutates original string

word = "ruby"
word.clear

p word
#<= ""



puts



##### The .delete Method on a String #####
# .delete method delete specified characters from the string
puts "Hello, it's a nice day today".delete("osa")
#<= Hell, it'  nice dy tdy


def custom_delete(string, substring)
  new_string = ""
  # Separate substring into chars and put them into array
  chars = substring.chars
  # Check if chars are present in the string - if yes delete
  string.each_char do |char|
    new_string << char unless substring.include?(char)
  end
  new_string
end

p custom_delete("Hello my name is Mike", "e")
#<= "Hllo my nam is Mik"
