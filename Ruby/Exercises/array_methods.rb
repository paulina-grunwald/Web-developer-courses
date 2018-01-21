###############  Arrays - Iteration and Various Methods ###############


##### Review of Blocks #####
3.times {|number| puts "I am currently on loop number #{number}"}

puts

3.times do |number|
  square = number * number
  puts "The current number is #{number} and it's square is #{square}"
end



puts



##### The .each Method on an Array #####

def print_evens_and_odds(array)
  evens = []
  odds = []
  array.each {|number| number.even? ? evens << number : odds << number}
  p evens
  p odds

end

num_array = [1,2,4,5,6,8,13,55,34,24]
print print_evens_and_odds(num_array)
print print_evens_and_odds([2,4,1,5,8])




puts




#####  Each within each #####

shirts = ["white", "dotted", "solid color", "red"]
ties = ["polka dot", "solid color", "boring"]

# Iterate over two arrays and create all possible pairs of shirts and ties
shirts.each do |shirt|
  ties.each do |tie|
      puts "Option: A #{shirt} shirt and #{tie} tie"
  end
end




puts





##### The For Loop #####
# The for loop is very similar to each but it does not create local scope for the variables__

numbers = [3, 4, 6, 5]

num = 100

for num in numbers
  num
end
#<=3 4 6 5
p num
#<= 5

=begin
It's not recommended to use for loops in Ruby.
As we can see in above example the num = 100 is overwritten by last value from array numbers.
This is obviusly unwated behaviour.
=end




puts




#####  The .each_with_index Method #####

colors = ["red", "blue", "green"]

colors.each_with_index do |color, index|
  puts "Moving on index number #{index}"
  puts "Current color is #{color}"
end




puts




# Write a loop that iterates over a number array
# Output the PRODUCT of each number and it's index position

fives = [4, 5, 6, 9]

fives.each_with_index do |num, index|
  puts "Current index is #{index}"
  puts num * index
end


puts
# Write a loop that gives a sum of
# the producs of each index and its values

sum = 0
array = [3, 17, 23, 75]
def multiply(number)
  sum = 0
  number.each_with_index do |number, index|
    result = number * index
    sum += result
  end
  sum
end

puts multiply(array)
#=> 288




puts




# Prints the product of the element and the index position
# if the index position is greater than the elements

nums = [-1,2,1, 5,7, 4]
def print_num(array)
  n = 0
  array.each_with_index do |array, index|
    if index >  array
      p "Index is #{index} and number is #{array}"
    end
  end
end

puts print_num(nums)
#<= "Index is 0 and number is -1"
#<= "Index is 2 and number is 1"
#<= "Index is 5 and number is 4"




puts




##### The .map and .collect Methods on an Array #####
# .map and .collect methods are the same! They do the same thing.

numbers = [1, 2, 4, 5]

array_squares =  numbers.map{ |number| number **2}
puts  array_squares
#<= 1 4 16 25

puts

# Write a cubes method that accepts an arrays
# and return a new array. The new array will
# have all the values form the original one cubed

def cubed(array)
  cubed = []
  array.each do |array|
    cubed << array ** 2
  end
  cubed
end

array = [1, 3, 4, 6]

print cubed(array)
#<= [1, 9, 16, 36]



puts



#####  Iteration over Array with while or until Loops #####

animals = ["lion", "zebra", "elephant", "tiger"]

i = 0
while i < animals.length #or until i == animals.length
  puts i
  puts animals[i]
  i += 1
end



puts



##### The break Keyword #####

names = ["Mike", "Bob", "Maria", "Kamil", "Alex"]
i = 0
while i < names.length
  current = names[i]
  if current == "Maria"
    puts "Found #{current}"
    break
  else
  puts "#{current} is not gold"
  i+=1
  end
end
#<= Mike is not gold
#<= Bob is not gold
#<= Found Maria

nums = [1, 2, 3, 6, 7, "dog", 8, 9, 10]

nums.each do |num|
  if num.is_a?(Fixnum)
    puts "The square of #{num} is #{num ** 2}"
  else
    puts "That is not a valid number!"
    break
  end
end
=begin
The square of 1 is 1
The square of 2 is 4
The square of 3 is 9
The square of 6 is 36
The square of 7 is 49
That is not a valid number!
=end




puts




##### The next Keyword ######

numbers_new = [1, "cat", 3, "hi", nil, [], "mike", "paula"]

numbers_new.each do |num|
  unless num.is_a?(Fixnum)
    next
  else
    puts "The square of #{num} is #{num ** 2}"
  end
end
#<= The square of 1 is 1
#<= The square of 3 is 9



puts



##### The .reverse Method on an Array #####

p "Hello".reverse
#<= "olleH"
p [1, 2, 3, 4].reverse
#<= [4, 3, 2, 1]
p [[1,2].reverse, [3,4]].reverse
#<= [[3, 4], [2, 1]



puts



##### The .sort Method on an Array  #####

p [1, 4, 93, 6, 8].sort
#<= [1, 4, 6, 8, 93]

p ["Mike", "anna", "alex", "bob"].sort
#<= ["Mike", "alex", "anna", "bob"]

domestic_animals =  ["dog", "cat", "mouse"]
p domestic_animals.sort.reverse
#<= ["mouse", "dog", "cat"]




puts




##### The .concat Method on an Array ######

num = [1, 2 , 4]

p num.concat([5, 3])
#<= [1, 2, 4, 5, 3]


##### The .max and .min Methods on an Array #####

puts [1, 2, 3, 4, 5].max
#<= 5
puts [1, 2, 3, 4, 5].min
#<= 1


puts


##### The .include? Predicate Method on an Array #####

# .include? can be true or false depending if the value is found:

p "Hello".include?("l")
#<= true

nums = [1, 2, 3, 4, 5]
p numbers.include?(8)
#<= false


puts



##### The .index and .find_index Methods on an Array #####

colors = ["Red", "Blue", "Green", "Red"]
p colors.index("Blue")
#<= 1 - Blue is on position 1

p colors.index("Red")
#<= 0 -  Ruby will output only first position of Red from the array

p colors.index("Yellow")
#<= nil - the value is not found!



puts



##### The .select Method on an Array ##########The .reject Method on an Array ######

grades = [90, 76, 16, 20, 65, 73, 34]

matches = grades.select do |number|
  number >= 75
end
p matches
#<= [90, 76]


# find palindrome

words = ["dog", "level", "dinosaur"]

palindrome = words.select { |word| word == word.reverse }
p palindrome
#<= ["level"]

#####  The .reject Method on an Array #####

# Reject is a complementary method with select.
# The method rejects all the items that evaluate to True
animal = ["dog", "lion", "cheetah", "cow"]
puts animal.reject{|animal| animal.include?("o")}
#<= cheetah


puts



##### Unpack a Multidimensional Array  #####

people = [["Mike", 45, "Male"], ["Bob", 22, "Male"], ["Maria", 34, "Female"]]

p people[0]
#<= ["Mike", 45, "Male"]

p people[1][2]
#<= "Male"

# Unpack the people array and assign each inner array to new array

mike, bob, maria = people
p mike
#<= ["Mike", 45, "Male"]
p bob
#<= ["Bob", 22, "Male"]
p maria
#<= ["Maria", 34, "Female"]




puts




#####  The .partition Method on an Array #####

food = ["Steak", "Vegatables", "Steak Burger", "Kale", "Tofu", "Tuna Steaks"]

good = food.select { |food| food.include?("Steak") }
bad  = food.reject { |food| food.include?("Steak")}

p good
#<= ["Steak", "Steak Burger", "Tuna Steaks"]
p bad
#<= ["Vegatables", "Kale", "Tofu"]

# It's possible to achieve the same result using partition.
good,bad = food.partition{ |food| food.include?("Steak")}
p good
#<= ["Steak", "Steak Burger", "Tuna Steaks"]
p bad
#<= ["Vegatables", "Kale", "Tofu"]
