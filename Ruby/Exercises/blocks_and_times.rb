####BLOCKS####

####.times()####
#string will be repeated 3 times
3.times{ puts "Paulina likes sushi"}

puts

#use this format when you have multiple lines of code
2.times do
  puts "Paulina likes sushi!"
  puts "Paulina likes also pizza!"
end

puts

2.times do |count| count+=1
  puts "Paulina likes sushi #{count}!"
  puts "Paulina likes also pizza!"
end

puts

2.times {|count| puts "We love Ruby #{count}"}

puts

#Exercise: Use the times method to output the first 10 multiples of 3
num = 3
10.times do |count| #count will start at 0
  #puts "#{3*(count+1)}"
  puts num*(count+1)
end

puts

###.downto method ###
puts ".downto method perfom count down operation"
5.downto(1) {|i| puts "Countdown #{i}"}

puts

5.downto(0) do |num|
  puts "Current number is #{num}"
end

puts

puts ".downto method perfom count up operation"

####.upto()####
1.upto(5) do |num|
  #add one to num
  puts num+=1
end

puts

####.step()####
0.step(50,5) {|num| puts num}

0.step(50,5) do |num|
  puts "Current number is #{num}"
end
