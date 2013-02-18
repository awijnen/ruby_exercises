class Jukebox
  # define four commands list, help, play, exit
  attr_accessor :songs
  
  def initialize
    
    # @songs = songs

    @commands = ["list", "play", "help", "exit"]
    @welcome_statement = "Welcome to the jukebox!"
    @command_statement = "What do you want to do next?"
    @help_statement = "Enter one of the following commands: " + @commands.join(", ")
  end

  def start # use to 'boot up' Jukebox
    puts @welcome_statement
    run
  end
  
  def run # always return to this class, i.e. after executing list, help, or play
    puts @command_statement    
    @input = gets.strip.downcase
    puts @input
    if @commands.include?(@input)
      send(@input)
    else
      invalid
    end
  end
    # execute run

  def invalid
    puts "This is an invalid command."
    run
  end

  def list # return all songs, and return to run (to keep the prompt open)
    @songs.each_with_index do |song, index|
    puts "Song index: #{index}   -   Song name: #{song}"
    end
    run
  end

  def help # print a help statement, and return to run (to keep the prompt open)
    puts @help_statement
    run
  end
  
  def play # ask the user to enter a song index and print the song you're playing, and return to run (to keep the prompt open)
    puts "Enter Song index: "
    @song_number = gets.strip.to_i
    puts "Now playing: " + @songs[@song_number]
    run
  end  

  def exit # return all songs, and return to run (to keep the prompt open)
    puts "Shutting jukebox down!"
  end

end
