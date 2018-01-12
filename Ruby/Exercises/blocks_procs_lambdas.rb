######################  Blocks, Procs, and Lambdas ##############################

=begin
BLOCK:
- block is a collection of code to be executed,
- block must be attached to a method call,
- blocks alter the execution of the method,
- a block is not an argument / parameter to method,
- defined by {} and end
- block is not an object!
=end


#iterate over the array and cube each number
num = [1, 4, 6, 7, 8]
num.each {|num| puts num * num}

#map elements of the array and create new arrays

food = ["pizza", "burger", "pasta", "curry"]
array_food = food.map {|food| "I love #{food}"}
p array_food
#=>["I love pizza", "I love burger", "I love pasta", "I love curry"]

food.map {|food|
  if food == "pizza"
    puts "I love #{food}"
  elsif food == "burger"
    puts "I love #{food}"
  elsif food == "curry"
    puts "#{food} is spicy!"
  elsif food == "pasta"
    puts "#{food} is tasty."
  else
    puts "NULL"
  end
}
#=>I love pizza
#=>I love burger
#=>pasta is tasty.
#=>curry is spicy!

puts

##### Yield #####
# yield allows you to "inject" that code at some place into a function

def print_func
  puts "We are not inside of the method"
  yield
  puts "We are back inside the method"
end

print_func{ puts "We are not inside of the BLOCK! Yield was used!"}
#=>We are not inside of the method
#=>We are not inside of the BLOCK! Yield was used!
#=>We are back inside the method
