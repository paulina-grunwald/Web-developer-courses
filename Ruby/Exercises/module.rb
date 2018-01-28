################# MODULE ####################
# A module is a toolbox or container of methods and constands.
# Module methods and constands can be used as needed.
# Modules create namespaces from methods with the same name.
# Modules cannot be used to create instances. It's not made to create new objects.
# Modules can be mixed into classes to add behaviour.
# Modules are witten with UpperCamelCase.
# Access module method with the . operator.
# Access module constants with the :: symbol.
# The ::symbol is called SCOPE RESOLUTION OPERATOR.

# Create module
module LenghtConverstions
  # Add constant
  WEBSITE = "http://www.metric-conversions.org/length-conversion.htm"

  # Self refers to the module
  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end


puts LenghtConverstions.miles_to_feet(100)
#<= 5280000
puts LenghtConverstions.miles_to_inches(1)
#<= 63360
puts LenghtConverstions.miles_to_centimeters(1)
#<= 160934.4



puts



#####  Modules with Identical Methods #####

module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(lenght, width)
    lenght * width
  end
end


module Circle
  PI = 3.141
  def self.area(radius)
    PI * radius * radius
  end
end


puts Square.area(4)
#<= 16

puts Rectangle.area(5,6)
#<= 30

puts Circle.area(3)
#<= 28.269



puts



#####  Math module #####
puts Math::PI
#<= 3.141592653589793
puts Math.sqrt(14)
#<= 3.7416573867739413



puts



##### MIXIN #######

# Different classes need similar funcionalities
# For example String and Numeric both need <, <=, >= and ==
# Neither class can be represented as subclass of the other.
# Duplication of methods across violates the DRY principle

class OlympicMedal
  # <, <=, >=, <=>, .between?
  include Comparable

  MEDAL_VALUES = {"Gold" => 3, "Silver" => 2, "Bronze" => 1}
  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(other)
    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
end

  bronze = OlympicMedal.new("Bronze", 5)
  silver = OlympicMedal.new("Silver", 10)
  gold = OlympicMedal.new("Gold", 3)

  puts bronze > silver
  #<= false
  
