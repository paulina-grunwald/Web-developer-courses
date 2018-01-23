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




# Write a function that sorts the keys in a hash by the length
#of the key as a string. For instance, the hash:

hash = { abc: 'hello', 'another_key' => 123, 4567 => 'third' }

p hash.keys.map(&:to_s).sort_by(&:length)
# or
p hash.keys.collect(&:to_s).sort_by { |key| key.length }
#<= ["abc", "4567", "another_key"]


# Use .collect on arrays and hash
animals = ["dog", "cat", "horse", "pig"]
p animals.collect
#<= #<Enumerator: ["dog", "cat", "horse", "pig"]:collect>

random_hash = { "name" => "Paulina",
                "age" => "30",
                "sex" => "female"}
p random_hash.collect
#<= #<Enumerator: {"name"=>"Paulina", "age"=>"30", "sex"=>"female"}:collect>
