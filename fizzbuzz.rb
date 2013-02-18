# FizzBuzz - The Programmer's Stairway to Heaven

# Define the fizzbuzz method to do the following: 10pts
  # Use the modulo % method (divisible by)
    # 2 % 2 #=> true
    # 1 % 2 #=> false

  # If a number is divisible by 3, puts "Fizz".
  # If a number is divisible by 5, puts "Buzz".
  # If a number is divisible by 3 and 5, puts "FizzBuzz"

    # Use if statements 2pts
    # Use the && operator 3pts


# Write a loop that will group the numbers from 1 through 50
# by whether they fizz, buzz, or fizzbuzz - 10pts

def fizzbuzz(number)
  if (number % 15 == 0)
    puts "FizzBuzz"
    "FizzBuzz"
  elsif (number % 3 == 0)
    puts "Fizz"
    "Fizz"
  elsif (number % 5 == 0)
    puts "Buzz"
    "Buzz"
  else
    puts ""
  end
end

fizzbuzz_array = []
fizz_array = []
buzz_array = []

# for i in 1..50
#   fb_result = fizzbuzz(i)
#   if (fb_result == "FizzBuzz")
#     fizzbuzz_array << i
#   elsif (fb_result == "Fizz")
#     fizz_array << i
#   elsif (fb_result == "Buzz")
#     buzz_array << i
#   end
# end

(1..50).each do |i|
  fb_result = fizzbuzz(i)
  if (fb_result == "FizzBuzz")
    fizzbuzz_array << i
  elsif (fb_result == "Fizz")
    fizz_array << i
  elsif (fb_result == "Buzz")
    buzz_array << i
  end
end