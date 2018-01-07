####Q: what is a class of x?####
x = 5
x.class
#=>Fixnum

####Q: Get the first letter from string Paulina####
string = "Paulina"
string[0]
#=>"p"

####Q: Get first through 3rd element from string "Paulina"####
string[0..2]

####Q: Replace "i" in string "Paulina"####
puts string.gsub(string[4],"m")

####Q: Get the last element from the the string "Paulina"####
string[-1]

####Q: Replace the "P" letter with "K"####
string[0] = "K"

####Q: Convert string "I LoVe RuBy" to lowecase####
sentence = "I LoVe RuBy" 
sentence.downcase!

####Q: Integers have useful built-in methods too. Convert the number 5 to the string "5".
num = 5
num.to_s

####Q: Update the code, so it can run successfully: band = "Blink" + 182####
band = "Blink" + 182.to_s

####Q: Create an array with nothing inside it.####
array = Array.new()
array = []

####Q: Add the string "I love Ruby" to the end of the ruff Array.####
love = ["I","love", "Ruby"]
love.push("very")
love<<("much")
love[2] = "myself" 

####Q: Demonstrate that "ruby" is the same as "ruby"####
ruby == ruby
#Every value in Ruby is truthy, except nil and false, which are falsey.

####Q: what does this code print?####
if x=2 and y=1 and x>y
  puts "cookies"
else
  puts "no"
end
puts x
#=>cookies
#=>2
#The variable y is defined inside the conditional and can be accessed outside the conditional.

####Q: Print cube of number 2####
def square_of_number(number)
  return(number * number)
end

def cube_of_number(number)
  return(number * square_of_number(number))
end

puts cube_of_number(2)



#####Q:Define a method that multiplies two numbers together#####
x = 2 
y = 3

def multiply(a,b)
  return a*b
end

puts multiply(x,y)

=begin ####Q: Define a method called silly_check() that takes a number argument 
and returns "The number is less than 5" if the argument is less than 5 
and "The number is greater than or equal to 5" otherwise.####
=end

print "Please input a number between 0 and 10: "
user_num = Integer(gets.chomp)

def silly_check(num)
	if num < 5
		return "The number is less than 5"
	else
		return "The number is greater than or equal to 5"
  end
end
puts silly_check(user_num)

