# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(game_hash, player_name)
  players = game_hash[:home][:players] + game_hash[:away][:players]
  target_player = players.find { |player| player[:player_name] == player_name }
  
  if target_player
    return target_player[:points]
  else
    return nil  # Player not found
  end
end

# Example usage
game = game_hash
player_name = "Jeff Adrien"
points = num_points_scored(game, player_name)
puts "#{player_name} scored #{points} points."


def shoe_size(game_hash, player_name)
  players = game_hash[:home][:players] + game_hash[:away][:players]
  target_player = players.find { |player| player[:player_name] == player_name }
  
  if target_player
    return target_player[:shoe]
  else
    return nil  # Player not found
  end
end

# Example usage
game = game_hash
player_name = "Alan Anderson"
size = shoe_size(game, player_name)
puts "#{player_name}'s shoe size is #{size}."

def team_colors (game_hash,team_name)
  if game_hash[:home][:team_name] == team_name
    return game_hash[:home][:colors]

  elsif game_hash[:away][:team_name] == team_name
    return game_hash[:away][:colors]
    
  else
    return nil
  end
end

game = game_hash
team_name = "Charlotte Hornets"
colors = team_colors(game, team_name)
puts "#{team_name}'s colors are: #{colors.join(',')}"

def team_names (game_hash)
  teams = game_hash[:home][:team_name] , game_hash[:away][:team_name]
  puts "#{teams}"
end
team_names(game_hash)

def player_numbers (game_hash, team_name)
  if game_hash[:home][:team_name] == team_name
    return game_hash[:home][:players].map {|player| player[:number]}
    
  elsif game_hash[:away][:team_name] == team_name
      return game_hash[:away][:players].map {|player| player[:number]}
  else
    return nil
  end
end

game = game_hash
team_name = "Brooklyn Nets"
numbers = player_numbers(game, team_name)
puts "#{team_name} jersey numbers are: #{numbers.join(',')}"


def player_stats (game_hash, player_name)
  players = game_hash[:home][:players] + game_hash[:away][:players]
  target_player = players.find{|player| player[:player_name]==player_name}

  if target_player
    return target_player
  else
    return nil
  end
end

game = game_hash
player_name = "Alan Anderson"
stats = player_stats(game, player_name)
puts "Stats for #{player_name}"
puts stats

def big_shoe_rebounds (game_hash)
  players = game_hash[:home][:players] + game_hash[:away][:players]
  player_with_largest_shoe = players.max_by {|player| player[:shoe]}

  if player_with_largest_shoe
    return player_with_largest_shoe[:rebounds]
  else
    return nil
  end
end

game = game_hash
rebounds = big_shoe_rebounds(game)
puts "Number of rebounds for player with the largest shoe size: #{rebounds}"