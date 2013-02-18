# Hashketball Nests
#
# Great news! You're going to an NBA game! The only catch is that you've been
# volunteered to keep stats at the game.
# Using Nested Hashes, define a game, with two teams, their players, and the players stats:
# The game has two teams.
#
# A team has:
# - A name
# - Two colors
#
# Each team should have at least 5 players
#
# Each player should have a:
# - name
# - number (like their jersey number)
# - shoe size
#
# Each player should have the following stats:
# - points
# - rebounds
# - assists
# - steals
# - blocks
# - slam dunks


game = {
  :team1 => {
    :team_name => "Lakers",
    :colors => ["yellow", "Blue"],
    :roster => {
      :player1 => {
        :player_name => "Kobe Bryant",
        :number => 1,
        :shoe_size => 1,
        :points => 1,
        :rebounds => 1,
        :assists => 1,
        :steals => 1,
        :blocks => 1,
        :slamdunks => 1},
      :player2 => {
        :player_name => "Shaq",
        :number => 2,
        :shoe_size => 2,
        :points => 2,
        :rebounds => 2,
        :assists => 2,
        :steals => 2,
        :blocks => 2,
        :slamdunks => 2},
      :player3 => {
        :player_name => "Magic Johnson",
        :number => 3,
        :shoe_size => 3,
        :points => 3,
        :rebounds => 3,
        :assists => 3,
        :steals => 3,
        :blocks => 3,
        :slamdunks => 3},
      :player4 => {
        :player_name => "Larry Bird",
        :number => 4,
        :shoe_size => 4,
        :points => 4,
        :rebounds => 4,
        :assists => 4,
        :steals => 4,
        :blocks => 4,
        :slamdunks => 4},
      :player5 => {
        :player_name => "Karem Abdul Jabar",
        :number => 5,
        :shoe_size => 5,
        :points => 5,
        :rebounds => 5,
        :assists => 5,
        :steals => 5,
        :blocks => 5,
        :slamdunks => 5}
      }
  },
  :team2 => {
    :team_name => "Knicks",
    :colors => ["Orange", "Blue"],
    :roster => {
      :player1 => {
        :player_name => "Jeremy Lin",
        :number => 1,
        :shoe_size => 1,
        :points => 1,
        :rebounds => 1,
        :assists => 1,
        :steals => 1,
        :blocks => 1,
        :slamdunks => 1},
      :player2 => {
        :player_name => "Patrick Ewing",
        :number => 2,
        :shoe_size => 2,
        :points => 2,
        :rebounds => 2,
        :assists => 2,
        :steals => 2,
        :blocks => 2,
        :slamdunks => 2},
      :player3 => {
        :player_name => "Michael Jordan",
        :number => 3,
        :shoe_size => 3,
        :points => 3,
        :rebounds => 3,
        :assists => 3,
        :steals => 3,
        :blocks => 3,
        :slamdunks => 3},
      :player4 => {
        :player_name => "Labron James",
        :number => 4,
        :shoe_size => 4,
        :points => 4,
        :rebounds => 4,
        :assists => 4,
        :steals => 4,
        :blocks => 4,
        :slamdunks => 4},
      :player5 => {
        :player_name => "Steve Nash",
        :number => 5,
        :shoe_size => 5,
        :points => 5,
        :rebounds => 5,
        :assists => 5,
        :steals => 5,
        :blocks => 5,
        :slamdunks => 5}
      }
  }
}


# def max_points(game)
#   scores = []
#   players = [:player1, :player2, :player3, :player4, :player5]
#   players.each do |p|
#     player = game[:team1][:roster][p]
#     scores << [player[:name], player[:points]]











# Using the power of Ruby, and the Hashes you created above to answer the following questions:
# Return the number of points scored for any player:
 puts game[:team2][:roster][:player1][:points]


# Return the shoe size for any player:
 puts game[:team2][:roster][:player1][:shoe_size]

# Return both colors for any team:
 puts game[:team2][:colors]

# Return both teams names:
 game.each do |key, value|
  puts key
 end

# Return all the player numbers for a team:
game[:team2][:roster].each do |player, player_contents|
  puts player_contents[:number]
end


# Return the rebounds for the player with the largest shoe size
def largest_shoes(game)
max_shoes = 0
rebounds = 0
max_shoes_player = ""
game.each do |team, team_contents|
  team_contents[:roster].each do |player, player_contents|  
    if player_contents[:shoe_size] == max_shoes
      max_shoes_player = max_shoes_player + " and #{player_contents[:player_name]}"
      rebounds = player_contents[:rebounds]
    elsif player_contents[:shoe_size] > max_shoes
      max_shoes = player_contents[:shoe_size]
      max_shoes_player = player_contents[:player_name]
      rebounds = player_contents[:rebounds]
    end
  end
end
puts "#{max_shoes_player} has size #{max_shoes} shoes and #{rebounds} rebounds"
end

largest_shoes(game)

# Bonus Questions: define methods to return the answer to the following questions:
# Which player has the most points?

def most_points(game)
max_points = 0
max_points_player = ""
game.each do |team, team_contents|
  team_contents[:roster].each do |player, player_contents|  
    if player_contents[:points] == max_points
      max_points_player = max_points_player + " and #{player_contents[:player_name]}"
    elsif player_contents[:points] > max_points
      max_points = player_contents[:points]
      max_points_player = player_contents[:player_name]
    end
  end
end
puts "#{max_points_player} scored #{max_points}"
end

most_points(game)

# Which team has the most points?
def winner(game)
winner = ""
winner_points = 0
  game.each do |team, team_contents|
    total = 0
    team_contents[:roster].each do |player, player_contents|  
      total += player_contents[:points]
    end
    if total > winner_points
      winner = team_contents[:team_name]
      winner_points = total
    elsif total == winner_points
      winner = "tie"
    end
  end

  if winner == "tie"
    puts "The game was a tie, with each team scoring #{winner_points} points"
  else
    puts "#{winner} scored #{winner_points} points and won the game"
  end
end

winner(game)

# Which player has the longest name?
def longest_name(game)
max_length = 0
max_length_player = ""
game.each do |team, team_contents|
  team_contents[:roster].each do |player, player_contents|    
    if player_contents[:player_name].length > max_length
      max_length = player_contents[:player_name].length
      max_length_player = player_contents[:player_name]
    elsif player_contents[:player_name].length == max_length
      max_length_player += max_length_player " and #{player_contents[:player_name]}"
    end
  end
end
max_length_player
end

puts longest_name(game)

# Super Bonus:
# Write a method that returns true if the player with the longest name had the most steals:
def most_steals(game)
max_steals = 0
max_steals_player = ""
game.each do |team, team_contents|
  team_contents[:roster].each do |player, player_contents|  
    if player_contents[:steals] == max_steals
      max_steals_player = max_steals_player + " and #{player_contents[:player_name]}"
    elsif player_contents[:steals] > max_steals
      max_steals = player_contents[:steals]
      max_steals_player = player_contents[:player_name]
    end
  end
end
max_steals_player
end
 most_steals(game)




def longestNameAndMostSteals(game)
  if longest_name(game) == most_steals(game)
    true
  else
    false
  end
end

puts longestNameAndMostSteals(game)
