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

#convert sting to symbol
p "age".to_sym.class
#=>symbol




puts




#####  The .fetch Method on a Hash #####

candy = {icecream: 1.5,
         chips: 2,
         chocolate: 3}

p candy[:chips]
#<= 2

# Use fetch method on a hash
p candy.fetch(:icecream)
#=> 1.5
p candy.fetch(:chocolate)
#=>3

# .fetch is more flexible than just calling the key.
# If we we input only key name and it's not included in the hashes
# We will get error. If we provide 2nd arguments
# It will return 2nd

p candy.fetch(:lolipop, 2) # == candy[:lolipop, nil]
#=>9.99


puts




##### Add a Key Value Pair to a Hash with Bracket Syntax or the .store Method  ######

menu = {burger: 4, taco: 2, salad: 3.44, chips: 1}

p menu[:burger]
#<= 3
p menu[:sandwich]
#<= nil

# Add new value to the hash
menu[:tortilla] = 5
p menu
#<= {:burger=>4, :taco=>2, :salad=>3.44, :chips=>1, :tortilla=>5}

# Use .store methd on the hashe
menu.store(:sushi, 12.55)
p menu
#<= {:burger=>4, :taco=>2, :salad=>3.44, :chips=>1, :tortilla=>5, :sushi=>12.55}


# Create priority&to do list in form of hash

todo = {clean_dishes: 1, cook_dinner: 2, wash_car: 3  }
p todo
#<= {:clean_dishes=>1, :cook_dinner=>2, :wash_car=>3}

# Add item to the todo listed
todo.store(:wash_clothes, 4)
todo[:send_letter] = 3

p todo
#<= {:clean_dishes=>1, :cook_dinner=>2, :wash_car=>3, :wash_clothes=>4, :send_lette


puts




#####  The .length and .empty? Methods on a Hash  #####

shopping_list = {carrot: 2, pasta: 1, apples: 7}
shopping_list2 = {}

p shopping_list.length
#<= 3

p shopping_list.empty?
#<= false

p shopping_list2.length
#<= 0
p shopping_list2.empty?
#<= true





puts


#####  The .each Method on a Hash #####










puts 




#####  The .each_key and .each_value Methods ######

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
