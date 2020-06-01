# Wanted to see how i could combine arrays without using zip or splat
# The final output is: [["1B", "Gurriel", "Fielder"], ["2B", "Altuve", "Andrus"], ["3B", "Bregman", "Odor"], ["SS", "Correa", "Beltre"], ["C", "Gattis", "Lucroy"], ["P", "Keuchel", "Darvish"], ["LF", "Beltran", "Gomez"], ["CF", "Springer", "Choo"], ["RF", "Reddick", "Mazara"]]

headers = [
  '1B',
  '2B',
  '3B',
  'SS',
  'C',
  'P',
  'LF',
  'CF',
  'RF'
]

astros = [
  'Gurriel',
  'Altuve',
  'Bregman',
  'Correa',
  'Gattis',
  'Keuchel',
  'Beltran',
  'Springer',
  'Reddick'
]

rangers = [
  'Fielder',
  'Andrus',
  'Odor',
  'Beltre',
  'Lucroy',
  'Darvish',
  'Gomez',
  'Choo',
  'Mazara'
]

def team_players(headers, team1, team2)

  sorted_by_position = {}

  i = 0
  while i < headers.length do
  headers.each do |pos|

    if sorted_by_position[pos] == nil
      sorted_by_position[pos] = []
    end
    sorted_by_position[pos].push(team1[i])
      sorted_by_position[pos].push(team2[i])

    i += 1
  end  

  position_array = sorted_by_position.to_a

  end

  final_array = []
  position_array.each do |item|
    x = item.flatten!
    final_array.push(x)
  end

  final_array

end
