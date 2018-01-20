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
  p num
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
  puts sum
end

puts multiply(array)
#=> 288



##### The .map and .collect Methods on an Array #####

#####  Iteration over Array with while or until Loops #####


##### The break Keyword #####

##### The next Keyword ######
##### The .reverse Method on an Array #####
##### The .sort Method on an Array  #####
##### The .concat Method on an Array ######
##### The .max and .min Methods on an Array #####
##### The .include? Predicate Method on an Array #####
##### The .index and .find_index Methods on an Array #####
##### The .select Method on an Array #####
##### The .reject Method on an Array ######
