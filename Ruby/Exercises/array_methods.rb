###############  Arrays - Iteration and Various Methods ###############

##### The ri Program #####


##### Review of Blocks #####
3.times {|number| puts "I am currently on loop number #{number}"}

puts

3.times do |number|
  square = number * number
  puts "The current number is #{number} and it's square is #{square}"
end

##### The .each Method on an Array #####
