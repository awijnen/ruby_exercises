# Testing / Assertion
# Define a method that takes two values and compares them, printing pass or fail
def assert_equal(actual, expected)
  if actual == expected
    puts "pass"
  else
    puts "fail"
  end
end
 
assert_equal(1,1) #=> pass
assert_equal(2,1) #=> fail
 
# Use assert to test the following:
 
# define a method to sum the values of an array. Make this method defend against nils and
# other errors
 
def sum(numbers)
  sum = 0
  numbers.each do |element|
    if element.is_a?(Fixnum)
      sum += element
    else
      puts "You can't sum a #{element.class}"
    end
  end
  return sum
end
 
assert_equal sum([]), 0
assert_equal sum([1,2]), 3
assert_equal sum([1,nil,2]), 3
assert_equal sum([1, "2", 2]), 3
 
# define a method that returns comfortable for temps between 60-80, cold for below and hot
# for above.
 
def temperature_bot(temp)
  feeling = ""
  if temp < 60
    feeling = "cold"
  elsif temp.between?(60, 80)
    feeling = "comfortable"
  elsif temp > 80
    feeling = "hot"
  end
  return feeling
end
 
assert_equal temperature_bot(65), "comfortable"
assert_equal temperature_bot(70), "comfortable"
assert_equal temperature_bot(85), "hot"
assert_equal temperature_bot(30), "cold"
 
# define an object, Person, that has a birthdate and a name. Define a method for a person
# that returns their age.

class Person
  attr_accessor :name, :birthday, :age, :birthday_array, :DOB

  def initialize
    @birthday_year
    @birthday_month
    @birthday_day
  end

  def birthday_strip
    @birthday_month = @birthday.scan(/(\d{2,4})/)[0][0].to_i
    @birthday_day = @birthday.scan(/(\d{2,4})/)[1][0].to_i
    @birthday_year = @birthday.scan(/(\d{2,4})/)[2][0].to_i
  end

  def dob_generalize # get a year, month, day in format YYYY, MM, DD
    @DOB = Time.mktime(@birthday_year, @birthday_month, @birthday_day)
  end

  def age
    birthday_strip
    dob_generalize
    @age = ((((Time.now - @DOB) / 3600) / 24) / 365).to_i
  end
end

begin
  person = Person.new
  person.name = "Alan Turing"
  person.birthday = "06/23/1912"
 
  assert_equal person.name, "Alan Turing"
  assert_equal person.birthday, "06/23/1912"
  assert_equal person.age, 100
 
rescue => e
  puts "Fail: #{e}"
end