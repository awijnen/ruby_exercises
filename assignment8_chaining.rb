# Chain at least 5 method calls to an object.
# Reduce this operation one chain at a time.
# Don't just use the methods below, make up your own chain and try to see if you can do something fun with Ruby like in the example.

# Example:
# puts "start".reverse.slice(0,2).concat("uth").capitalize
# => Truth

# Because:
# puts "start".reverse
#=> trats

# puts "start".reverse.slice(0,2)
#=> tr

# puts "start".reverse.slice(0,2).concat("uth")
#=> truth

# puts "start".reverse.slice(0,2).concat("uth").capitalize
#=> Truth

# At any given point in the chain, there is an evaluation
# that then receives the next method call

puts "father".reverse

puts "father".reverse