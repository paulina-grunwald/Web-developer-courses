=begin
This piece of code asks for user input and replace letter "a" in provided by user input to letter "x"
Used methods:
.downcase
.include
.gsub 

=end

print "Please insert a sentence. A will be replaced with X:"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "a"
  user_input.gsub!(/a/, "x")
else
  puts user_input
end