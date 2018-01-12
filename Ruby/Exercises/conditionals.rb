########### CONDITIONALS ###########
 def introduce
   expression = "My name is Paulina"
   puts expression
end
puts introduce



def praise_person(name)
  puts "#{name} is amazing!"
end
puts praise_person("Paulina")

#return method
def add_numbers(num1,num2)
  puts "two added number result in:"
  num3 = num1 + num2
  return num3
end
puts add_numbers(5,10)
#=>15


#####IF statement#####
def auth_agent(rank, name, credentials)
  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
    puts "Access granted"
  else
    puts "Access denied, #{name}"
  end
end

puts auth_agent("007", "James Bond", "Spy")
#=>Access granted
puts auth_agent("007", "James Bond", "Secret Agent")
#=>Access granted
puts auth_agent("008", "James", "Agent")
#=>Access denied, James




#####Nested IF statement#####
def meal_plan(time_of_week, time_of_day)
  if time_of_week == "weekday"
    if time_of_day == "breakfast"
      "cereal"
    elsif time_of_day == "lunch"
      "sandwich"
    elsif time_of_day == "dinner"
      "steak"
    end
  elsif time_of_week == "weekend"
    if time_of_day == "breakfast"
      "smoothie"
    elsif time_of_day == "lunch"
      "pizza"
    elsif time_of_day == "dinner"
      "pasta"
    end
  end
end
puts meal_plan("weekday", "lunch")

puts



######  The .respond_to? Method #######
#.respond_to checks if method can be run on an object
number = 5
p number.respond_to?("next")
#=>true

number = 50
if number.respond_to?("next")
  number.next
  puts number
else
  puts "This method doesn't exist on this object"
end




#####  Ternary Operator  ######

puts 2<4 ? "yes" : "no"
#=>yes
puts "string" == "String" ? "true" : "no"
#=>no

def even_or_odd(num)
  num.even? ? "Num is even" : "Num is odd"
end
puts even_or_odd(3)
#=>num is odd

puts



##### Default or Optional Parameters #####

def make_pizza(meat, cheese = "mozarella", crust = "thick crust")
  puts "Making pizza with #{meat}, #{cheese} cheese, and #{crust}"
end

puts make_pizza("sausage")


puts

#####  Call A Method from Another Method or Interpolated String ####

#create calculator

def add(a,b)
  a + b
end

def substract(a,b)
  a - b
end

def multiply(a,b)
  a * b
end

def calculator(a, b, operation )
  if operation == "add"
    "the result of adding is #{add(a,b)}"
  elsif operation == "substract"
    "the result of subtracting is #{substract(a, b)}"
  elsif operation == "multiply"
    "the result of multiplying is #{multiply(a, b)}"
  else
    "This is not right math operation"
  end
end

puts calculator(3, 5, "add")
#=>8
puts calculator(4, 4, "multiply")
#=>16


puts

#### Case Statements ####

def my_food(food)
  case food
  when "sushi"
    "Japanese food is the best!"
  when "vegan"
    "Vegs ar every healthy"
  when "mexican", "taco", "mole"
    "Mexican food is spicy"
  else
    "I do not know about this food"
  end
end

puts my_food("taco")
#=>Mexican food is spicy

def price(price)
  case price
  when 0..10 then "afforable"
  when 11..20 then "good price"
  when 21..30 then "still ok price"
  when 31..40 then "expensive"
  end
end

puts price(35)
#=>expensive

puts


####  Negation with !  #####

p !""
#=>false
p !!""
#=>true

puts

####The unless Keyword#####
password = "secret"

unless password == "secret"
  puts "Wrong password"
else
  puts "This is correct password"
end


#check if the word contain selected letter
#include method check if the string is included in other string
word = "dog"
unless word.include?("d")
  puts "The word doesn't include letter d"
else
  puts "The word contains letter d"
end
#=>"The word contains letter d"

puts


#####The while Keyword#####
i = 1

while i <= 5
  puts i
  #incremept i with 1 on every loop run
  i+=1
end


#check if user and password inputed by user are correct
#status = true
##  print "Please enter your username"
  #username = gets.chomps.downcase
#  print "Please enter your password"
#  password = gets.chomp.downcase

#  if username == "Mike" && password == "secret"
#    puts "Password and username correct."
#    status = false
#  else
#    "Goodbye! Your password and username were not correct"
#  end
#end


puts

#####The until Keyword#####
i = 0
until i > 6
  puts i
  i += 1
end


####fizzbuzz programme####

def fizzbuzz(number)
i = 1
  while i <= number
    if i%3 == 0 && i%5== 0
      puts "fizzbuzz for #{i}"
    elsif  i%3 == 0
      puts "Fizz for #{i}"
    elsif i%5 == 0
      puts "Buzz for #{i}"
    else
      puts "Try another number"
    end
    i+=1
  end
end

number = 20
puts fizzbuzz(number)


puts



####Statement Modifiers / Inline Modifiers#####

number = 5000

if number > 2500
  puts "This is a big number!"
end

#no end key required!
puts "This is a big number!" if number > 2500


puts


#####Conditional Assignment####
#used if you do not know if variable is nil or not

#assign nil to variable
y = nil
p y

#can assign value only if the y variable is nil
y ||= 5
puts y

name = "Paulina"
extract = 50
letter = name[extract]
letter ||= "Letter not found"
p letter
