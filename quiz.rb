# quiz.rb

# Write a program that tells you the following:
#
# Hours in a year. How many hours are in a year? - 6pts
# Minutes in a decade. How many minutes are in a decade? - 6pts
# Your age in seconds. How many seconds old are you? - 6pts
#
# Define at least the following methods to accomplish these tasks:
#
# seconds_in_minutes(1) #=> 60 - 3pts
# minutes_in_hours(1) #=> 60 - 3pts
# hours_in_days(1) #=> 24 - 3pts
# days_in_weeks(1) #=> 7 - 3pts
# weeks_in_years(1) #=> 52 - 3pts
#
# If I am 1,111 million seconds old, how old am I?
#   Define an age_from_seconds method - 7pts

def seconds_in_minutes(seconds)
  return seconds / 60
end

def minutes_in_hours(minutes)
  return minutes / 60
end

def hours_in_days(hours) 
  return hours / 24
end

def days_in_weeks(days)
  return days / 7
end

def weeks_in_years(weeks)
  return weeks / 52
end

def age_from_seconds(seconds)
  age = weeks_in_years(days_in_weeks(hours_in_days(minutes_in_hours(seconds_in_minutes(seconds)))))
  puts "You are " + age.to_s + " years old." 
end

age_from_seconds(1111000000)