lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each { |x, y| 
  if x == "Ryan"
    puts "#{y}" 
  else 
    puts "this order is not for ryan"
  end}