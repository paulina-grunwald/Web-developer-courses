p 5 < 10
#=> true
p 10.odd?
#=> false
p 11.odd?
#=> true
p 2.even?
#=> true

puts
#When you run even? or odd? method on float it will give error
#p 2.2even?
#=> error

p 5 == 10
#=> false
p "5" == 5
#=> false
p "5" == "5"
#=> true
p 5 == 5.0
#=> true
#it's recommanded to compare same types of data
p 5.to_f == 5.0
#=>true

puts

p "Hello" != "hello"
#=>true
p "heLLo".downcase == "HELLO".downcase
#=>true

p 1.+(2)
#=>3
#.div() is a divide method
p 10.div(5) == 2
#=>true

#between is boolean method. returns false if objec is =>min and <=max
2.between?(1,5)
#=>true
"cat".between?("ant", "dog")
#=>true
"girafa".between?("ant", "dog")
#=>false

p 10.5.floor
#=>10
p 10.5.ceil
#=>11
p 3.6.round
#=>4
p 3.14354336.round(3)
#=>3.144

p 10.abs
#=>10
p -10.abs
#=>10
