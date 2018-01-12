################################ HASHES ##############################

=begin
Hash is optimal for storing relationships between objects.
Hash stores key-value pairs.
Hashes are called dictionaries, maps or associative arrays in other languages.
A hash object connects unique identifiers (keys) to values.
=end

 ##### Intro to Hashes #####

hash = {}
p hash.class
#=>Hash

#keys can not be duplicated! Values can be duplicated.
capitol = {"Netherlands" => "Amsterdam",
           "Poland" => "Warsaw",
           "Bulgaria" => "Sofia"}

cities = {"Netherlands" => ["Rotterdam", "Amsterdam", "Leiden"],
          "Poland" => ["Warsaw", "Krakow", "Lublin"]}

#extract value using keys
p capitol["Bulgaria"]
#=>"Sofia"
p cities["Netherlands"]
#=>["Rotterdam", "Amsterdam", "Leiden"]

#check what happens when you ask about non existent objects
p cities["Turkey"]
#=>nil

puts



##### Intro to Symbols and Symbols as Hash Keys #####
#Symbols are often used as keys for hashes as they are more lightweight.

p :name.class
#=>symbol
person = {name: "Paulina",
          age:20,
          languages: ["Python", "Ruby", "PHP"]}


#convert symbol to string
p :age.to_s.class
#=>string
p "age".to_sym.class
#=>symbol

#####  The .fetch Method on a Hash #####

candy = {icecream: 1.5,
         chips: 2,
         chocolate: 3}

p candy.fetch(:icecream)
#=> 1.5
p candy.fetch(:chocolate)
#=>3
p candy.fetch(:lolipop, 9.99 )
#=>9.99
