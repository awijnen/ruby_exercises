songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
]

commands = ["list", "play", "help", "exit"]

puts "Welcome to the jukebox!"

help_statement = "Enter one of the following commands: " + commands.join(", ")
puts help_statement

input = gets.strip

while input != "exit"
    puts "What do you want to do next?"
    input = gets.strip.downcase
    i = 0  
  
  case input
  when "list"
    songs.each_with_index do |song, index|
      puts "Song index: #{index} - Song name: #{song}"

  when input.start_with("play")
    puts "Now playing: " + songs[input.gsub("play ", "").to_i]

  when "help"
    puts help_statement

  when "exit"
    break

  else
    puts "#{input.capitalize} is an invalid command. Type 'help' for all available commands."
    
  end
end