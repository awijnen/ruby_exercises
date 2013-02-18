class Fixnum # class already exist, if you add methods they will be added to the available list / overwritten if they do exist
 def is_prime? # we're running the code on the Fixnum itself
   response = true
   ((self**0.5).round).downto(2) do |num| # downto goes from the number you specified before (preceding parentheses) down to the downto-parameter
       response = false if self % num == 0
   end
   response
 end


# other example
 def time_two
  self * 2
 end

end


 # example for IRB: 5.is_prime?