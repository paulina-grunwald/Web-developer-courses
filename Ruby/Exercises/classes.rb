##############################  CLASSES  #############################
=begin
- Ruby's built-in objects like Arrays or Hashes cannot represent everything.
- The goal of OOD is to use code to model real-life things as classes.

Class
- A class is the blueprint, pattern, template for an object.
- An object is an instance of the class. It is created from the class.
- INSTANTIATION is the process of creating object from a class
- A class is called an abstract type because it hides the complexity of interacting
with the data, much like a method abstracts the complexity of a process.
=end



#####  Review of the .class Method on Ruby Objects #####
puts 8.class
#=> Integer
puts 8.2.class
#=> Float
puts "hello".class
#=> String
puts [1,2,3].class
#=> Array
puts nil.class
#=> NilClass
puts (1..3).class
#=> Range
puts //.class
#=> Regexp

puts Proc.new {}.class
#=> Proc
puts lambda {}.class
#=> Proc
puts Time.now.class
#=> Time




puts


#####  The .superclass and .ancestors Methods on a Class #####

# The object's class is itself another object.
=begin
- On a class we have .superclass Method
- A superclass is the class that current class inherits from.
- Iheritance follows as "is-a" structure.
- The .superclass method is called on a class.It returns the parent class that the current class inherits from.
- The class that inherits from superclass is called subclass.
- Every class in RUby (except BasicObject at the top of hierarchu ) has at least one superclass.
=end

p  5.class.superclass
#<= Numeric
p [1,2,3].class.superclass
#<= Object



puts



##### The .methods Method ######

# Show all available methods on num object
p 5.methods.sort

puts

fixnum_methods = 5.methods.sort
float_methods = 3.14.methods.sort
p fixnum_methods & float_methods
p fixnum_methods - float_methods
