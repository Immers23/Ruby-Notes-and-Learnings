# Today we learn about flow control and the use of if / else / break in the order a program executes code.
# A simple dice game was built to demostrate the understanding
# Upgrade the game once more: now we play several rounds for each game. The first player to win two rounds wins the game. (Still with two dice each.)

p1game_counter = 0
p2game_counter = 0

while (p1game_counter || p2game_counter) < 2 do

  p1 = rand(6) + rand(6)
  p2 = rand(6) + rand(6)
  if p1 > p2
    p1game_counter += 1
  else
    p2game_counter += 1
  end
  puts "p1game_counter = #{p1game_counter}"
  puts "p2game_counter = #{p2game_counter}"

  if (p1game_counter == 2)
    puts "player 1 you are the winner with 2 wins"
  break
  end
  if (p2game_counter == 2)
    puts "player 2 you are the winner with 2 wins"
  break
  end
end
