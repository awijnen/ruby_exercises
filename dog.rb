# ######### Class instance variables ###########
# # Pitbull child class will NOT overwrite @@default_color in parent Dog class
# class Dog
#   @default_color = 'black'
 
#   def self.default_color
#     @default_color
#   end
# end
 
# class Pitbull < Dog
#   @default_color = 'blue'
  
#   def initialize
#     puts "my default color is #{self.class.default_color}"
#   end

# end

######### Class variables ###########
# Pitbull child class will overwrite @@default_color in parent Dog class

class Dog
  @@default_color = 'black'
 
  def self.default_color
    @@default_color
  end
end
 
class Pitbull < Dog
  @@default_color = 'blue'
  
  def initialize
    puts "my default color is #{self.class.default_color}"
  end

end

