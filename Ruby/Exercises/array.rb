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

#check if array contain number 1 and how many times it appears
p [1,2,1, 1, 5].count(1)
#=>3

#### The .empty? and .nil? Methods on an Array ####

puts [true, false,false].empty?
#=>false

puts [].empty?
#=>true

puts [].nil?
#=>false

letters = ("a".."j").to_a
character = letters[40]
p character.nil?
#=>true


##### The .first and .last Methods #####

array = [1, 2, 3, 4, 5, 6, 7]
p array.first
#=>1
p array.last
#=>7

#this will return array
p array.first(1)
#=>[1]
p array.last(3)
#=>[5, 6, 7]

#write a function that return first num elements form the array
def custom_first(arr, num = 0)
  return arr[0] if num == 0
  arr[0,num]
end

puts custom_first(array, 7)

def custom_last(array, num = 0)
  return array[-1] if num == 0
  array[-num..-1]
end


##### The .push Method, the Shovel Operator, and the .insert Method####
city = ["Paris", "Warsaw", "Amsterdam"]
p city
#=>["Paris", "Warsaw", "Amsterdam"]
city.push("Bucharest")
p city
#=>["Paris", "Warsaw", "Amsterdam", "Bucharest"]

#=>add element to the array using shovel operator
city << "Berlin"
p city

#insert "Budapest" in position 0
city.insert(0, "Budapest")
p city


#####  The .pop Method #####

array = [1, 2, 3, 4, 5, 6]
#remove last element form the arrays
last_item = array.pop
p last_item
#=>6

three_items = array.pop(3)
p three_items
#=>[3, 4, 5]


puts



#### The .shift and .unshift Methods #####
#shift does the same thing as pop but at the beginning of the array
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array_1 = array.shift(5)
p array_1
p array

puts



##### Equality and Inequality Operators with Arrays #####

a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]

p a == b
#=>false
#if two arrays have the same element but in reverse order, they are not the same
p a == c
#=>false

puts

##### The Spaceship Operator #####
# 0 - if two values are Equality
# -1 - if the left side is smaller
# 1 - if the right side is smaller
# nil - if values can't be compared

puts 3 <=> 4
#=>-1
puts 4 <=> 4
#=>0

p [1, 2, 3] <=> [1, 2, 5]
#=> -1


puts



##### Convert Ranges to Arrays with the .to_a Method #####
letters = "a".."z"
p letters.class
#range

#convert range to array
letters_array = letters.to_a
print letters_array

puts
puts



##### The .is_a? Predicate Method #####
array = [1,2,4]
p 1.is_a?(Fixnum)
#=>true
p array.is_a?(Array)
#=>array

arr = ["one", "two", "three"]
if arr.is_a?(Array)
  arr.each {|a| p a}
end
#=> two, three

=begin
Basic object
object
      Integer
  Fixnum   Bignum
=end
