class Spaceship
  attr_accessor :destination
  attr_reader :name
  attr_writer :name

  # add metod launch with destination  argument and instant variable
  def launch(destination)
    # add instance variable
    @destination = destination
  end
end

ship = Spaceship.new
# Set destination
ship.destination = "Earth"
# Get destination
#p ship.destination

odd = []
even = []
num = [1,2,4,5,6,7]
num.each do |num|
  if num.odd?
    odd<<num
  else
    even<<num
  end
end

puts odd
puts
puts even
