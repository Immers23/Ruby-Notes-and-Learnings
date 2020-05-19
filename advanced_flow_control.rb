# The user is told they're facing forward and can type 'forward', 'left', or 'right'.
# If the user enters 'right', they die (goblin).
# If the user enters 'left', they die (werewolf).
# If the user enters 'forward', they're told they live, and can move again.
# If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 1 again.
# If the user enters 'right', they die (goblin).
# If the user enters 'left', they die (werewolf).
# If the user enters 'forward', they're told they won and the game exits.
# If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 4 again.
move_counter = 1

while true do

puts "You are facing forward, you can type 'forward', 'left' or 'right'"

direction = gets.chomp
  if direction == 'right'
    puts 'you die from a goblin'
    break
  elsif direction == 'left'
    puts 'you die from warewolf'
    break
  else direction == 'forward'
    if move_counter == 2
    puts "you win"
    break
  end
    move_counter += 1
  end
end
