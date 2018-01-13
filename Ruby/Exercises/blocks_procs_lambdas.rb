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


# Iterate over the array and cube each number
num = [1, 4, 6, 7, 8]
num.each {|num| puts num * num}

# Map elements of the array and create new arrays

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



puts



##### PROC ######
# Proc funcioned as a saved block and can be reused.

a = [1, 2, 3, 4, 5, 6]
b = [2, 3, 4, 7, 8]
c = [10, 12, 4, 1, 4, 6]

# If we would like to cude all items in the arrays we would use following code

a_cubed = a.map {|item| item ** 3}
p a_cubed

# If we would like to do it also for b and c it this way would be quite inefficent.
# To improve efficency we can use proc.

cubes = Proc.new{|num| num ** 3}
a_cubed = a.map(&cubes)
b_cubed = b.map(&cubes)
c_cubed = c.map(&cubes)

# To improve this code and make it more efficent ! IMPORTANT!!!
a_cubed, b_cubed, c_cubed = [a, b, c].map{ |array| array.map(&cubes)}

p a_cubed
p b_cubed
p c_cubed


d = [1, 2, 3, 4, 5]
multiply = Proc.new{|number| number * 2}
array_multiply = d.map(&multiply)
p array_multiply
#=>[2, 4, 6, 8, 10]


currency = [40, 45, 12, 2, 23, 79]

to_euro = Proc.new{|num| num * 0.95}
to_zloty = Proc.new{ |num| num * 4}

p dol_to_zl =currency.map(&to_euro)


puts

# We can also use proc to return bool value
ages = [20, 45, 12, 87, 34, 26]
is_old = Proc.new do |age|
  age > 60
end

p ages.map(&is_old)


puts


##### The .block_given? Method ######



#####  A Custom .each Method  #####



##### Procs II #####


#####  Pass a Ruby Method as Proc #####



##### Intro to Lambdas #####

##### Lambda Efficiency Example #####
