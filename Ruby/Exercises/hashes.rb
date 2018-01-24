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

capitals = {Hungary: "Budapest", Poland: "Warsaw"}

capitals.each do |state, capital|
  puts "Quering hash.."
  puts "Capital of #{state} is #{capital}"
end
=begin
Quering hash..
Capital of Hungary is Budapest
Quering hash..
Capital of Poland is Warsaw
=end


capitals.each do |guess|
  p guess[0] # output keys
  p guess[1] # output values
end
#<= :Hungary
#<= "Budapest"
#<= :Poland
#<= "Warsaw"


puts



##### The .each_key and .each_value Methods #####
 ages = {Maria: 23, Mark: 76, Paul: 24, John: 18}

# Iterate over the keys of the hash age
 ages.each_key do |age|
   puts "Ages for various people are"
   puts "#{age}"
end

=begin
Ages for various people are
Maria
Ages for various people are
Mark
Ages for various people are
Paul
Ages for various people are
John

=end

puts

# Iterate over all values of the hash age

ages.each_value {|age| puts "Age is #{age}"}
#<= Age is 23
#<= Age is 76
#<= Age is 24
#<= Age is 18


puts


# Write a function which returns keys and values
# and saves them to an array

def get_keys(hash)
  keys = []
  values = []
  hash.each do |k, v|
    keys << k
    values << values
  end
  keys

end


p get_keys(ages)


puts


#####  Retrieve Keys or Values from Hash as an Array #####

basket = {bananas: 3, oranges: 3, apples: 2}

# Extract keys
p basket.keys
# Extract values
p basket.values
# Extract unique values using method .uniq
p basket.values.uniq



puts



#####  Create Hash with Default Value #####

vegs = Hash.new("Not Found")

p vegs[:cucumber]
#<= Not Found

vegs.default = "Wooops! not found"
p vegs[:tomato]
#<="Wooops! not found"



puts




#####  Convert Hash to Array and Vice Versa ######

fruits = {apple: "red", orange: "orange", potatoes: "brown"}

# Transform hash to arrays
p fruits.to_a
#<= [[:apple, "red"], [:orange, "orange"], [:potatoes, "brown"]]

# Change array to hashe

cities = [[:Warsaw, "Poland"], [:Bucharest, "Romania"]]

p cities.to_h
#<= {:Warsaw=>"Poland", :Bucharest=>"Romania"}



puts




#####  The .sort and .sort_by Methods on a Hash ######

fruit_color = {apple: "red", orange: "orange", lemon: "yellow"}

# Sort by keys
p fruit_color.sort.reverse
#<= [[:orange, "orange"], [:lemon, "yellow"], [:apple, "red"]]


# Sort by values using .sort_by
p fruit_color.sort_by {|fruit,color| fruit}
#<= [[:apple, "red"], [:lemon, "yellow"], [:orange, "orange"]]

p fruit_color.sort_by {|fruit,color| color}
#<= [[:orange, "orange"], [:apple, "red"], [:lemon, "yellow"]]




puts




######  The .key? And .value? Methods on a Hash #######
 cars = {toyota: "camry", chevrolet: "aveo", ford: "F"}

 puts cars.key?(:ford)
 #<= True
 puts cars.value?("F")
#<= True

puts cars.key?(:tesla)
#<= false

puts cars.has_value?("camry")
#<= true



puts




######  Hashes as Method Arguments  ######


def calc(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

puts calc(60, 0.18, 0.08)
#<= 75.6

p calc(0.18, 0.08, 60)
#<= 10.994399999999999


def calc_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

bill = {tip: 0.18, tax: 0.09, price: 25.75}

p calc_2(bill)
#<= 32.7025





puts






######  The .delete Method on a Hash ######
superheroes = {spiderman: "Peter Parker", superman:"Clark Kent"}

# Key will be deleted but value will be stored
p removed = superheroes.delete(:spiderman)
#<= "Peter Parker"




puts




######  The .select and .reject Methods on a Hash #####

recipie = {sugar: 7, flour: 10, salt: 1, peper: 0.5}

high = recipie.select {|item,amount| amount >= 5}
p high
#<= {:sugar=>7, :flour=>10}



puts



######  The .merge Method to Combine Hashes  ######
# merge is temporary operations
# .merge merges two hashes

shop = {garlic: "2 cloves", tomatoes: 5, milk: "10 gallons"}
kitchen = {bread: "2 loaves", yoghurt: "20 cans", milk: "100 gallons"}

p shop.merge(kitchen)
#<= {:garlic=>"2 cloves", :tomatoes=>5, :milk=>"100 gallons", :bread=>"2 loaves", :yoghurt=>"20 cans"}

# kitchen.merge(market)




puts




######  Word Frequency in a Sentence String ######

sentence = "Once upon a time in a land far away"

def word_count(string)
  # Return a hash where the keys will represent
  # the words in the string







puts

##### Write a function that sorts the keys in a hash by the length
#of the key as a string. For instance, the hash: ######


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
