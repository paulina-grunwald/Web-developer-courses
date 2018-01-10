x = String.new("i wish i was surfing")
y = String.new("I love ruby")

String.new("I love ruby")

#The methods() method returns an array of the methods that the object can use. 
#The String class is built-in to Ruby and provides a lot of methods that are commonly used,
# so we don't need to define them ourselves.
"hi".methods()


#swapcase() is a method that is available to string objects. 
#In this example, the swapcase() method is called on the "sUp DuDe" object.

"sUp DuDe".swapcase()


#
"This is a sentence, kinda".split()
#=>["This", "is", "a", "sentence,", "kinda"]


###Q:
my_array = Array.new()
my_array.push("nice")
my_array.push("hair")
puts my_array.inspect # The inspect() method is called on the array object and it is printed

What is a class?

A class can be thought of as a factory that makes objects.



class Dog
  def speak()
    return("ruff ruff")
  end
end

spot = Dog.new()
puts spot.speak()