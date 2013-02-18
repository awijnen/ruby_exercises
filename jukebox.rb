songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
]
# list, play, help, exit

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
    end

  when "play"
    puts "Enter Song index: "
    song_number = gets.strip.to_i
    puts "Now playing: " + songs[song_number]

  when "help"
    puts help_statement

  when "bang"
    puts "You know the secret commands. Kudos to you! Here's a free song!"
    puts "Now playing: Rock Around The Clock"
    puts "Get down and boogie like it's 1955!"

  when "exit"
    break

  else
    puts "#{input.capitalize} is an invalid command. Type 'help' for all available commands."

  end
end


### Alternatives
# command = gets.downcase.strip
# if command.start_with?("play")
#   song_number = command.split.last.to_i
#   command = "play"
# end







