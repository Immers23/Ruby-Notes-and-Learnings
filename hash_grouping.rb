players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

# Set up a new hash (sorted_by_sport will do as a name for now).
# Go through the players.
# For each player (player_under_consideration will do as a name for now), take a note of the sport they play (sport will do as a name for now).
# Check the sorted_by_sport hash. If sport does not exist as a key on that hash, set sport equal to an array containing the name of player_under_consideration. Then move to the next player.
# Else, if sport DOES exist as a key on the hash, push the player_under_consideration's' name into the array that already exists. Then go to the next player.

sorted_by_sport = {}

players.each do |player|

  sport = player[:sport]

  if sorted_by_sport[sport] == nil
     sorted_by_sport[sport] = []
  end
     sorted_by_sport[sport].push(player[:name])
  end

sorted_by_sport
