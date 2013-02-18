# temperature_bot.rb
#
# http://rubeque.com/problems/temperature-robot
#
# Temperature bot is comfortable when it's room temperature (18-21C). Help him out by completing the method.
# Temperature bot is American but takes Celsius temperatures.
#
def temperature_bot(temp)
  case temp
  when 18, 21
    puts "I like this temperature"
  else
    puts "This is uncomfortable for me"
  end
end

# temperature_bot(18)
#=> "I like this temperature"
# temperature_bot(21)
#=> "I like this temperature"
#temperature_bot(22)
#=> "This is uncomfortable for me"
#temperature_bot(-3)
#=> "This is uncomfortable for me"

temperature_bot(18)
temperature_bot(22)