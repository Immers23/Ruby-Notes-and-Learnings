# Wanted to see how i could combine arrays without using zip or splat

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

def team_players(headers, astros, rangers)

  sorted_by_position = {}

  i = 0
  while i < headers.length do
  headers.each do |pos|

    if sorted_by_position[pos] == nil
      sorted_by_position[pos] = []
    end
    sorted_by_position[pos].push(astros[i])
      sorted_by_position[pos].push(rangers[i])

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
