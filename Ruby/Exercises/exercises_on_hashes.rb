country = {"name" => "Poland", "language" => "Polish", "continent" => "Europe"}

country.each do |key,value|
	puts value
end

#Print value for key "name"
country["name"]
#=> "Poland"


####SYMBOLS#####

#Symbols aren't strings
"string" == :string # false


menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}

puts menagerie[:foxes]