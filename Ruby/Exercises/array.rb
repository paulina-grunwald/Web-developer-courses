############ ARRAY ############
=begin
What is an array?
Array is an ordered collection of classes.It can be thought as of list.
Array itelf is an object. It acts as a container for other objects.
It's created with a [ ]
=end


p []
p [].class

nums = [3, 7, 34, 67, 49]
puts nums

animals = ["dog", "cat", "fish", "chicken"]
p animals

#you can duplicatae data and mix numbers with strings
various = [1 , 3, "cat", "cat"]
p various

#you can store array within an array

people = [["Alex", "man", "15"],
          ["Paulina", "woman", "23"]]

print people



##### Shorthand %w Syntax to Create an Array of Strings#####
names = %w[Jack Mark Matt Alex]
puts names

puts



#### Create an Array with Array.new Method####

#create new array with 4 storage places
array = Array.new(4)
#add a variable in the first place
array[1] = "mark"
puts array


array = Array.new(3, true)
puts array

#create array with multiple arrays inside
array = Array.new(3, [1, 2 ,3])
print array
#=> [[1, 2, 3], [1, 2, 3], [1, 2, 3]]

puts
puts


##### Access Single Array Element by Index Position #####

vegs = ["tomato", "carrot", "pumpkin", "cucumber"]
p vegs.length
#=>3

p vegs[1]
#=> "carrot"

p vegs[vegs.length - 1]
#=>"cucumber"

p vegs[0..(vegs.length - 1)]
#=>["tomato", "carrot", "pumpkin"]



##### Access Single Array Element with .fetch Method #####
names = ["Mike", "Pawel", "John"]
puts names[2]
#=>John

#return value that does not exist from the array names. Add default variable to be output.
p names.fetch(2)
p names.fetch(10, "unknown")
#=>"unknown"

puts

#####Access Sequential Array Elements with a Range Object#####
numbers = [1, 22, 34, 14, 45, 76, 17]

p numbers[2,4]
#=>[34, 14, 45, 76]

puts

numbers = [1, 12, 25, 567, 67, 1]

p numbers[3..4]
#=>[567, 67]

puts



#####Access Multiple Array Elements with the .values_at Method#####

fruits = ["orange", "apple", "banana", "kaki", "mango", "ananas"]
p fruits.values_at(0, 2, 5 )
#=> ["orange", "banana", "ananas"]
#you can retrieve double values
p fruits.values_at(0, 0, 5 )
#=>["orange", "orange", "ananas"]

puts



###### The .slice Method #####
fruits = ["orange", "apple", "banana", "kaki", "mango", "ananas"]
p fruits.slice(0,3)
#=>["orange", "apple", "banana"]
#this is the same t
p fruits[0...3]
#=>["orange", "apple", "banana"]
p fruits[0..2]
#=>["orange", "apple", "banana"]



##### Overwrite One or More Array Elements #####
fruits = ["mango", "banana", "blueberries"]
fruits[0] = "pear"
p fruits
#=>["pear", "banana", "blueberries"]


#####  The .length, .size and .count Methods on an Array #####

p [1,2,3, 4, 5].length
#=>5
p [1,2,3, 4, 5].size
#=>5
