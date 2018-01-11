########### CONDITIONALS ###########
 def introduce
   expression = "My name is Paulina"
   puts expression
end
puts introduce


def praise_person(name)
  puts "#{name} is amazing!"
end
puts praise_person("Paulina")

#return method
def add_numbers(num1,num2)
  puts "two added number result in:"
  num3 = num1 + num2
  return num3
end
puts add_numbers(5,10)
#=>15


#####IF statement#####
def auth_agent(rank, name, credentials)
  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
    puts "Access granted"
  else
    puts "Access denied, #{name}"
  end
end

puts auth_agent("007", "James Bond", "Spy")
#=>Access granted
puts auth_agent("007", "James Bond", "Secret Agent")
#=>Access granted
puts auth_agent("008", "James", "Agent")
#=>Access denied, James


#####Nested IF statement#####
