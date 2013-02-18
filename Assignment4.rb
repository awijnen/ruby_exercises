# assignment.rb
#
# write an expression that returns true by using ==
# write an expression that returns false using ==

puts 2 == 2
puts 1 == 2

#
# write an expression that returns true using !=
# write an expression that returns false using !=


puts 1 != 2
puts 2 != 2

#
# Write an if statement with 3 different branches
#   use != in the first branch, == in the second, and > in the third
#
# Assign a variable based on the result of an if statement

x = 2
if x == 2
  puts "x == 2"
  y = "assigning variable based on if statement"
elsif x == 3
  puts "x == 3"
else
  puts "x is not equal to 2 nor 3"
end

puts y

#
# Execute code based on the result of an if statement.
#   conditionally run puts "Hello Class" if 1 < 2
z = 1 
if z < 2
  puts "Hello Class"
end

#
# Try using an if statement at the end of an expression

puts "End if statement" if 1 == 1
#
# Write an if statement that negates the or operator to return true
# Write an if statement that uses the and operator to create a false return
#

u = 1
v = 2

if (u == 1 || v == 1) 
  puts true 
else
  puts false
end 

if (u == 1 && v == 1) 
  puts true 
else
  puts false
end

# http://techbot.me/2011/05/ruby-basics-equality-operators-ruby/

# Write a Case Statement that checks if a variable is a vowel
# Rewrite that same case statement as an if statement
# Write a Case statement that has at 4 branches and a default return

letter = "a"

case letter
when "a", "A", "e", "E", "i", "I", "o", "O", "u", "U", "y", "Y"
  puts "Letter '#{letter}' is a vowel"
else
  puts "Letter '#{letter}' is a consenant"
end

#
# Assignment
# Write a while loop that runs exactly 5 times
# Write a while loop that counts from 1 to 10 and puts all odd numbers
# => you can check if a number is odd by calling the odd? method on it.
# => 1.odd? will return true

i = 1

while i <= 5
  puts "loop running for the #{i}th time"
  i += 1
end

j = 1

while j <= 10
  if j.odd?
    puts "#{j} is an odd number"
  end
  j += 1
end



