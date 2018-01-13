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


day = Time.new(2018, 1, 1)
p day

# Add 60 seconds to the day date
p day + 60

# Add two hours to Days
p day + (60 * 60 * 2)

puts

# Write a code that prints out the exact date when inputed with day of the rubylearning

def find_day_of_year_by_number(number)
  current_date = Time.new(2018, 1, 1)
  new_date = current_date + (number * 1440 * 60)
  puts new_date
end

puts find_day_of_year_by_number(13)

# Other solution:

def find_day_of_year_by_number(number)
  current_date = Time.new(2016, 1, 1)
  one_day = 60 * 60 *24

  until current_date.yday == number
    current_date += one_day
  end
  return current_date
end

p find_day_of_year_by_number(150)
#=> 2016-05-29 01:00:00 +0100


puts




##### The Comparable Methods on a Time Object #####

birthday = Time.new(2016, 4, 12)
summer = Time.new(2016, 6, 21)
winter = Time.new(2016, 12, 21)
puts birthday < summer
#=> True

puts birthday == winter
#=> False

# We can perform use != operator!

# Check if the date is between two other dates
# .between method check if the values are within provided range
puts birthday.between?(birthday,summer)
#=> True


puts


##### Convert Time Object to Other Objects #####

day = Time.new(2000, 2, 15)

# Convert date to string using .to_s method
p day.to_s
#=> "2000-02-15 00:00:00 +0000"

# Convert date to more readable form
p day.ctime
#=> "Tue Feb 15 00:00:00 2000"

# Convert date to array
p day.to_a
#=> [0, 0, 0, 15, 2, 2000, 2, 46, false, "GMT Standard Time"]


puts



##### Convert Time Object to Formatted String #####

=begin
https://apidock.com/ruby/DateTime/strftime
Few examples of directive formats:
%b - The abbreviated month name (``Jan'')
%B - The full month name (``January'')
%d - Day of the month, zero-padded (01..31)
%Y - Year with century
=end


today = Time.now
p today.strftime("%B %d, %Y")
#=> "January 13, 2018"


puts


##### The .parse and .strptime Methods #####

# Load additional time feature
require 'time'

# Parse time to time object
puts Time.parse("2016-01-01").class
#=> Time

puts Time.strptime("04-01-2001", "%m-%d-%Y")
#=> 2001-04-01 00:00:00 +0100
