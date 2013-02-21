# Create your own injection method
def my_inject(collection, initial)
  collection.each do |item|
    initial = yield initial, item
  end
  return initial
end



# Define assert_equal method
def assert_equal(asserted, expected)
  if asserted == expected
    return true
  else
    return false
  end
end

# Test

[1,2].inject { |sum, number| sum + number }

my_inject([1,2], 0) do |sum, number|
  sum = sum + number
end