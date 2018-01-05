=begin
Ask the user for the input. Save the input into the variable. 
Iterate using method each over the words in user's input.
Print out only words that contain letter "c"
=end

print "Enter some random words"
user_input = gets.chomp
words = user_input.split(" ")

words.each { |words|
  if words.include? "c"
 	  puts words
  end }

