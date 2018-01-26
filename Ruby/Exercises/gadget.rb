# Create new class
class Gadget
  # Create initialize function
  attr_accessor :username
  attr_reader :production_number
  attr_writer :password


=begin
# Above written code is equivalent of this code
  def username
    @username
  end

 def username=(new_username)
    @username = new_username
  end

  # Create Getter method
  def production_number
    @production_number
  end

  # Create Setter method
  def password=(new_password)
    @password = new_password
  end

  def username=(new_username)
    @username = new_username
  end
=end


  def initialize
    # Create instance variables
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  # Create function to_s which will call instance variables and self
  def to_s
     "Gadget #{@production_number} has a username #{@username}.
     It's made from #{self.class} and it has the ID #{self.object_id}"
  end

  # Create instance methods
  # Instance methods have access to all instance variables
  # (and can call other instance variables)
  #Create Getter method

end

phone = Gadget.new # Instance of Gadget Class
laptop = Gadget.new # Instance of Gadget Class

p phone.username
#<= "User 95"
p phone.production_number
#<= "z-604"
phone.username = "Paulina"
p phone.username
#<= "Paulina"
