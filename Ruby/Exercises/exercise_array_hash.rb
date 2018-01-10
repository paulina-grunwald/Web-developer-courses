####Q: Define a method called funify() that takes an array as an argument and 
#adds the word "fun" to the end of the array.####
def call_funify
	return(array.push("fun"))
end
array = ["hello"]

call_funify(array)

def more_fun(array)
	array[0].gsub("FUN")
	return array
end


####Q: hat does this code print?.####

counter = 0
array = ["fat", "bat", "rat"]
while counter < array.length
  puts array[counter] + "-land"
  counter += 1
end

#=>"fat-land"
#=>"bat-land"
#=>"rat-land"


####Q: What does the following code print? ####
array = ["snake", "rat", "cat", "dog"]
array.each do |animal|
  puts animal if animal[0] == "s"
end


####Q: What does the following code return?####
[:a, :b, :c].include?(:a)
#=>true


####Q: What does the following code return?####

["Too", "Weird", "To", "Live,", "Too", "Rare", "To", "Die"].join(" ")

#->"Too Weird To Live, Too Rare To Die"


#### Q: What does the following code return?####

[2, 4, 6, 8].map { |number| number ** 2 }

2, 4, 6, 8].map do |number|
  number ** 2
end

####Q: Write a hash with few k,v pairs and call one of the keys####
hash = {"one"=> "1", "two"=>"2", "three"=>"3"}
hash.fetch("one")



animal = {"type"=>"mamal", "specie"=>"dog", "color" => "black", "life_span"=>"10 years"}

animal.select do |key,value|
	value == "dog"
end



animal.each{|k,v| puts k}


####Q: Iterate through first_names and populate result with the first_names and last name (result should be
# ["Hamburglar McDonald", "Grimace McDonald", "Ronald McDonald"] after the iteration).####

result = []
first_names = ["Hamburglar", "Grimace", "Ronald"]
last_name = "McDonald"

first_names.each do |item| 
  result.push(puts item+" "+last_name)
end

####Q:

result = []
personality_types = ["bad", "good", "great"]

personality_types.map { |type| type + " person" }



####Q: Return the value corresponding to the key :sport in the lebron hash.####
lebron = {:sport => "basketball", :birthplace => "Akron"}
lebron[:sport]

####Q: Add key and value to te hash####
name ={"john"=>"dow", "Anna"=>"marks"}
name[:Alex]= "Merak"


####Q:
lebron = {:sport=>"basketball", :birthplace=>"Akron", :high_school=>"St. Vincent-St. Mary High School"}

lebron.keys