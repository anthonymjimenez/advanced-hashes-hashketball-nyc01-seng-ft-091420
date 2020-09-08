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


def num_points_scored(playerName)
  hash = game_hash

  hash.each { | key, value|
      hash[key][:players].map { |e|
        if e[:player_name] === playerName
          return e[:points]
        end
       }
    }
end

def shoe_size(playerName)
  hash = game_hash

  hash.each { | key, value|
      hash[key][:players].map { |e|
        if e[:player_name] === playerName
          return e[:shoe]
        end
       }
    }
end

def team_colors(teamName)
  hash = game_hash
  hash.each { |key, value|
    if hash[key][:team_name] === teamName
      return hash[key][:colors]
    end
  }
end

def team_names
  hash = game_hash
  teamNameArray = []
  hash.each { |key, value|
    teamNameArray.push(hash[key][:team_name])
  }
  return teamNameArray
end

def player_numbers(teamName)
  hash = game_hash
  playerNumberArray = []
  hash.each { |key, value|
    if hash[key][:team_name] === teamName
      hash[key][:players].map { |e|
        playerNumberArray.push(e[:number])
        }
    end
  }
  return playerNumberArray
end

def player_stats(playerName)
  hash = game_hash
  hash.each { |key, value|
    hash[key][:players].map { |e|
      if e[:player_name] === playerName
        return e
      end
     }
  }
end

def big_shoe_rebounds
  hash = game_hash
  largest_size = nil
  rebounds = nil
  hash.each { |key, value|
      hash[key][:players].map { |e|
        if largest_size == nil || largest_size < e[:shoe]
          largest_size = e[:shoe]
          rebounds = e[:rebounds]
        end
        }
  }
  return rebounds
end

puts big_shoe_rebounds
