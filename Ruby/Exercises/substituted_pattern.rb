=begin
This piece of code asks for user input and replace letter "a" in provided by user input to letter "x"
Used methods:
.downcase
.include
.gsub 

=end

print "Please insert a sentence. A will be replaced with X:"
user_input = gets.chomp # take user input
user_input.downcase! # change the string to lowercase

if user_input.include? "a" # test if string include letter "a"
  user_input.gsub!(/a/, "x") # substitute letter "a" to "x"
else
  puts user_input
end