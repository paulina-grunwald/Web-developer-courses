# Key learning points Ruby
> By Paulina Grunwald

> E-mail:paulina.grunwald@gmail.com

### Content:
1. Ruby documentation
2. General Overview
3. Control flow
4. Classes and Objects
5. Standard types
6. Functions

## 1. Ruby documentation
If you are stuck with your code you can always visit __[rubydoc.info](http://www.rubydoc.info/stdlib/core)__ where you can find documentation for Ruby. It's very useful and for sure you can find there a lot of information.

## 2. General Overview

Ruby is an __object-oriented language__, meaning it allows users to manipulate data structures called objects in order to build and execute programs. We'll learn more about objects later, but for now, all you need to know is everything in Ruby is an object.

To create a variable without any value we can write:

```Ruby
variable = nil
```
__Nil__ is a special object that signifies no value. If we type __nil.class__ the result will be __NilClass__. To check if the variable is __nil__ we can use __.nil?__ method:

```Ruby
# check if variable is empty
variable.nil?
# =>True
```

__? mark__ is usually used for the methods that perform true-false check.

__! mark__ is usually used for dangerous or slightly unexpected operations e.g modifying the object in place instead returning modified copy.

Printing commands:
 - __print__ command just takes whatever you give it and prints it to the screen.

- __Puts__  adds a new (blank) line after the thing you want it to print.

- __p__ - short version of puts



### 2.1 Basic and useful methods:
- __.length__ method in Ruby will return the length of the string (that is, the number of characters—letters, numbers, spaces, and symbols).

```Ruby
"I love espresso".length
# ==> 15
```

- __.split__ - this method splits the string by selected Operators e.g "1,2,3,4 ".split(",")
- __.strip__ - method removes white spaces
- __.reverse__ method it prints out a backwards version of the
string you gave it.
- __.upcase__ and __.downcase__ methods convert a string to ALL UPPER CASE or all lower case, respectively.

- __Comments__
```Ruby
=begin
this is multi line
comment
=end
```

### 2.2 Inner and outer scope

```Ruby
variable_a = 10

def report
  variable_a = 5
end

report
puts variable_a
#=> 5
#=> 10
```

The variable_a in the report method is not affected by variable_a outside of that method. These are called <em>local variables</em>. It's also possible to create __global variables__ using $ so they will be visible throughout the program. e.g $variable_a = 10

## 3. Control flow

__Control flow__ gives us the flexibility we're looking for. We can select different outcomes depending on information the user types, the result of a computation, or the value returned by another part of the program. <em>Return<em> statements are used in flow control.

### 3.1 If, elsif and else

```Ruby
print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

```

Instead outputting on every branch is possible to rewrite the code so the output is saved to the variable:

```Ruby
num_a = 10

count = if num_a > 5
  "Num is bigger than 5"
else
  "Num is smaller than 5"
end

puts count
```

__Unless__

```Ruby
hungry = false

unless hungry = false
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

```


### 3.2 Next

The __next__ keyword can be used to skip over certain steps in the loop. For instance, if we don't want to print out the even numbers, we can write:

```Ruby
for i in 1..10
  next if i % 2 == 0
  print i
end
```

### 3.3 The .each Iterator

```Ruby
array = [1,2,3,4,5,7,8,9,10]

array.each do |x|
  x += 2
  print "#{x} "
end
```

other example

```Ruby
odds = [1,3,5,7,9]
# Add your code below!
odds.each { |odd| print odd*4 }

```

### 3.4 The .times Iterator

```Ruby
10.times { print "This sentence will be printed 10 times!"}
```

### 3.5 Loop Operators
```Ruby
i = 0
loop do
  print "I love Ruby!"
  i+=1
  break if i == 5
end
```

__.include?__ checks weather the string contains certain characters and evaluates to true if it finds what it's looking for and false otherwise.


__.gsub!__ method, which stands for global substitution.

```Ruby
print "Pleathe enter a thtring: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts user_input
end
```


### 3.6 __Booleans Operators__

 __&&__ - both comparisons on the left and right must evaluate to true for the entire statement to return true.

 __||__ either the right or left side must evaluate to true. If the left side evaluates to true, the right side will not be tried because it has met the condition of one side being true.

__!__ you reverse the result. If you're false you're now true.

## 4. Classes and Objects

Class names start with a capital letter and use CamelCase
To instantiate object from a new class we use __new__ method:

```Ruby
new_variable = ClassName.new
```

Variables and objects are not the same thing. Variables are just labels for objects.

To check if of the object:
```Ruby
a= "abc"
a.object_id
```
To <emn>clone</em> object we can use this code:
```Ruby
b = a.clone
```
Clone doesn't create deep copy.

__Instance variables__ in Ruby are dentoed by __@__. its scope is confined to whatever object self refers to.

```Ruby
class Person
  def call(name)
    @name = name
  end
end

person = Person.new
person.call("Max")
puts person.inspect #or p person
# #<Person:0x00560252671880 @name="Max">
```

If we want to access value of name later on we need to create method that returns it:
```Ruby    
class Person
  def call(name)
    @name = name
  end
  def name()
    @name
  end
end

person = Person.new
person.call("Max")
```

Each method has its own local scope, which is created when the method is called, and populated with local variables from the arguments list.  Scope is erased, and thrown away when Ruby exits the method body and returns from the method. And that local variables that are visible in one method are not visible in other methods: that’s why they are called local. __Every object also has its own scope.__ An object’s scope is populated with instance variables, in the moment we assign something to them. And they are visible everywhere in the object, that is, in every method that the object has.

__Instance variables live in, and are visible everywhere in the object’s scope.__

Inspect and p method allow you to look inside of a object.
Instance variables are private while methods are public by default.

### 4.1 Accessors and Virtual Attributes
__Attr_accessor__- creating an instance variable (@name) and a corresponding access method to read it.

```Ruby
class Spaceship
  attr_accessor :destination #attr_accessor is combination of attr_reader and attr_writer
  attr_reader :name
  attr_writer :name
end

ship = Spaceship.now
ship.name = "dreadnought"
puts ship.name
```
It's also possible to provide instances at once but htye need to be separated by commas


```Ruby
class Spaceship
  attr_accessor :destination, :name
end
```
__Virtual attribute__ are used to create accessor methods for an attribute that isn't directly backed by any instance variable.

```Ruby
class Arc
	  attr_accessor :radians

	  def degrees
	    @radians * 180 / Math::PI
	  end

	  def degrees=(degrees)
	    @radians = degrees * Math::PI / 180
	  end
	end

	arc = Arc.new
	arc.degrees = 180
	arc.radians                                # => 3.14159265358979
	arc.radians = Math::PI / 2
	arc.degrees                                # => 90.0
```



### 4.2 Initialization

### 4.3 Inheritance
Inheritance is for reusing functionality, not enforcing interfaces.


### 4.5 Method Visibility
We can use public or private declaration befre method.

```Ruby
private_class_method :do_something
```

### 4.6 Raising Exception
Exceptions are raised when something unexpected happens. To raise an exceptions we use __raise method__ from the object class. IIf you use string as argument raise method will raise __RuntimeError__.

```Ruby
def my_method
  #....
  raise "Method has failed!" # === > RuntimeError
  # ....
end
```
If we need more information for the exception it's necessary to write separate exception class.

If we for example would like to store login exceptions we can use rescue method and use empty raise. The exception will be stored in $!:
```Ruby
rescue  HatchError => err
  puts $!.message
  raise
end
```

## Standard types
Ruby doesn't use booleans but but true and false which are instances of TrueClass and FalseClass.


Integer numbers:
- Fixnum (small numbers)
- Bignum (for very very large numbers and are limited by available memory)

If you concatenate Floats with Integers ruby will return float.

When we write Ruby code we can specify __endcoding__. The comment about encoding should be placed on the first line or on the 2nd line if we have on the first one /usr/bin/ruby

```Ruby
# encoding: us-ascii
puts "abc".endcoding
```

If you need to include single quote in the string add __\__ e.g
'\'This is string\''.

## Symbols

Symbols aren't strings
```ruby
"string" == :string # false
```
```ruby
menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}

puts menagerie[:foxes]
````

The __.object_id__ method gets the ID of an object—it's how Ruby knows whether two objects are the exact same object. Run the code in the editor to see that the two "strings" are actually different objects, whereas the :symbol is the same object listed twice
```ruby
puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id
#=>12536880
#=>12536600
#=>801308
#=>801308

```



### Regular expressions


An array is simply a list of item. These items can themselves be Array or composition of any other data structure.

e.g., [1, 2, 3, '4', true, []]

A hash on the other hand is a key-value structure where information is stored and index using keys. That is, you store a value (it can again be any simple or complex data structure) within the hash and identify it using an unique key.

e.g., { 'a' => 1, 'b' => [1, 2]}


string_1 = "thisismylife"
def transcode (string_1)
    if string_1.encoding.name == "UTF-8"
        string_1.encode "ISO-8859-1"
        puts string_1
    else
        puts "no"
    end
end

## Functions

__Referential transparency__ - A function is said to be referentially transparent if it, given the same input parameters, always produces the same output (return value)
__Higher order function__ - function that does at least one of the following: takes one or more functions as arguments (i.e., procedural parameters), returns a function as its result.

__Blocks__ are just chunks of code that you can pick up and drop into another method as an input. They're often called "anonymous functions" because they have no name but behave much like functions. They're like little helper functions... you don't find blocks just hanging around without some method (like #each) using them.
```ruby
[1, 2, 3].each { |num| print "#{num}!"}
#=> 1! 2! 3!
```


__Proc objects__ are blocks of code that have been bound to a set of local variables. Once bound, the code may be called in different contexts and still access those variables.

# References
- http://ruby-for-beginners.rubymonstas.org/writing_classes/instance_variables.html
- https://www.safaribooksonline.com/library/view/ruby-cookbook/0596523696/ch08s07.html
- http://rubylearning.com/satishtalim/ruby_symbols.html
- https://www.safaribooksonline.com/library/view/learn-to-code/9781788834063/
