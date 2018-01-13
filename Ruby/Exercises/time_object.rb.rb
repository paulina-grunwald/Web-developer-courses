########################### TIME OBJECT ###################################
# Time is another object in ruby that has attached set of methods to it.
# It is used to represent time and dates.


# Create new time object. It will execute current time.
today = Time.new
p today
#=> 2018-01-13 14:55:46 +0000
p today.class
#=> Time

# Print current time
p Time.new
#=> 2018-01-13 14:57:34 +0000
p Time.new(2015)
#=> 2015-01-01 00:00:00 +0000

# Customize parameters with year, month and today
# Time.new(year, month, day, hour, min, second)
last_Jan = Time.new(2018, 1, 21, 6, 0, 0)
p last_Jan
#=> 2018-01-21 06:00:00 +0000


##### Instance Methods on a Time Object  #####
today = Time.now
p today
p today.month
p today.day
p today.year

puts

p today.hour
p today.min
p today.sec

puts


#Find which year of the year it is
some_day = Time.new(2018, 1, 13)
#find which day of the year is 13th of January
p some_day.yday
#=> 13
# Find day of the way (Remember: Sunday is day 0! Days i counted from 0 to 6)
p some_day.wday
#=> 6


puts

##### Predicate Methods on Time Objects #####
some_day = Time.new(2018, 1, 13)

# Check day of the week of some_day day
p some_day.saturday?
#=> true

# Check if the day is in day light setting
p some_day.dst?
#=> flase

puts

#####  Add or Subtract Time by Seconds #####



puts


##### The Comparable Methods on a Time Object #####

day = Time.new(2018, 1, 1)
p day

#add 60 seconds to the day date
p day + 60

#add two hours to Days
p day + (60 * 60 * 2)

puts

##### Convert Time Object to Other Objects #####
##### Convert Time Object to Formatted String #####
##### The .parse and .strptime Methods #####
