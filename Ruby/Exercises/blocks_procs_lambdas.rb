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



##### Iterate over the array and cube each number #####
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






##### Yield ######
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


def is_animal
  type = yield
  puts "I am a #{type}"
end

# DO NOT INCLUDE RETURN STATEMENT!
is_animal{"dog"}
is_animal{"cat"}
is_animal{"parrot"}


def multiple_pass
  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield
end

result = multiple_pass{ p "I am inside the BLOCK!" }
puts result




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

# It is used to safegour when no block is attached to the method.

def pass_control_on_condition
  puts "Inside the method"
  yield if block_given? #only if the block present the yield will be executed
    # or yield
  # end
  puts "Back inside the method"
end

pass_control_on_condition{ puts "Inside of the block"}
#=> Inside the method
#=> Inside of the block
#=> Back inside the method

puts
pass_control_on_condition
#=> Inside the method
#=> ack inside the method



puts



def speak_the_truth
  yield "Mark" if block_given?
end

speak_the_truth { |name| puts "#{name} is nice."}
speak_the_truth { |name| puts "#{name} is friendly."}
#=> Mark is nice.
#=> Mark is friendly.


# To have more flexibility we can phrase the code on this way:

puts



def speak(name)
  yield name if block_given?
end

puts speak("Boris") { |name| "#{name} is great!" }
puts speak("Maria") { |name| "#{name} is beautiful!" }
#=> Boris is great!
#=> Maria is beautiful!

puts


def num_eval(num1, num2, num3)
  puts "Inside the method."
  yield(num1, num2, num3)

end

puts result = num_eval(5,2,13) { |num1, num2, num3| num1 * num2 * num3}
#=> 130



puts




#####  A Custom .each Method  #####

#iterate over the array
def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

names = ["Mark", "Matt", "Paulina"]
num = [20, 25, 34]

custom_each(names) do |name|
  puts "The name is #{name} is #{name.length}"
end

custom_each(num) do |number|
  puts "The square of #{number} is #{number ** 2}"
end


puts


##### Procs II #####
# Proc can be passed as an argument to the method.
# It's also possible when method doesn't include parameter.

def hello
  puts "I am inside the method"
  yield
end

phrase = Proc.new do
  puts "Inside the proc"
end

#hello {puts "Hello from the custom block"}
hello(&phrase)
#=> I am inside the method
#=> Inside the proc


dog = Proc.new {puts "husky"}

# Use previously created proc in a .times method
5.times(&dog)
#=> husky
#=> husky
#=> husky
#=> husky
#=> husky




#####  Pass a Ruby Method as Proc #####




##### Intro to Lambdas #####



##### Lambda Efficiency Example #####
