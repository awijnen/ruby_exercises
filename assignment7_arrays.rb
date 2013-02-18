# arrays.rb
#
# Construct an array with your favorite foods. It should have at least 5 elements.
# Write a puts which returns your most favorite food out of the array.

foods = ["pasta", "steak", "pancakes", "sushi", "carpaccio"]
puts foods[1]


# Construct an array with the colors of the rainbow (ROYGBIV)
# Slice the colors Red, Orange, and Yellow out of the array.

colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
puts colors.slice(0,3)

# Create an empty array. 

array = []

# Assign values to the the second and 6th position.

array[1] = "second position"
array[5] = "6th position"

puts array