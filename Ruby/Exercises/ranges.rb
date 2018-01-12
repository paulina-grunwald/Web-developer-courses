################### RANGES ###################

#include 5!!
num = 1..5
puts num

#exclude 5!!
num = 1...5
puts num

p num.class
#=>Range

number = 1...10
puts number.first(4)
#=>1 2 3 4

puts

puts number.last(1)
#=>9


##### Alphabetical Ranges #####
alphabet = "a"..."z"
puts alphabet
#=>a...z

print alphabet.first(10)
#=>["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]

puts
puts


#### The .size Method on a Range #####

#size works only on a range object that include numbers. It output nil if we use letters.
range = 10...30
#size gives us information on the number of items in the range
puts number.size
#=>9

puts




#####Check if Value Exists in a Range with .includes? Method or ===#####

alphabet = "a"..."p"
puts alphabet.include?("b")
#=>true

numbers = -10...10
puts numbers.include?(-3)
#=>true

#check if value exists in the range
puts numbers === -4
#=>true
puts numbers === -11
#=>false



#####Generate A Random Number with the rand Method#####
#generate random number using .rand() ruby Method

#generate random number between 0 and 1
puts rand

#round floating number
puts rand.round
#=>1
puts 3.2312.round
#=>3

#generate random number between 1 and 20
puts rand * 20 
