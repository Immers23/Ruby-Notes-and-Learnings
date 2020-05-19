# The user sees a greeting, which asks them to enter their name.
# The user enters their name.
# If the user's name begins with 'S', the program shouts the user's name back at them.
# If the user's name begins with any other letter, the program just says 'Hi, ' plus their name.

puts "What is your name?"

user = gets.chomp

if user.chars.first.downcase == 's'
  puts user
else
  puts "Hi, #{user}"
end
