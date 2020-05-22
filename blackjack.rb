def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
           "eight", "nine", "ten",
           "jack", "queen", "king", "ace"]

  cards[rand(13)]
end

def move
  while true do
  puts "do you want to hit or stick"

  answer = gets.chomp

    if answer == "stick" || answer == "hit"
      return answer
    end
  end
end


def score(array_of_cards)
  values = {
    "two" => 2,
    "three" => 3,
    "four" => 4,
    "five" => 5,
    "six" => 6,
    "seven" => 7,
    "eight" => 8,
    "nine" => 9,
    "ten" => 10,
    "jack" => 10,
    "queen" => 10,
    "king" => 10,
    "ace" => 11
  }

  counter = 0

  array_of_cards.each do |card|
    counter += values[card]
  end
  return counter
end

def run_game
  hand = []

  while move == "hit"
    hand.push(random_card)
    puts "Score so far: #{score(hand)}"
    if score(hand) > 21
      puts "you busted with #{score(hand)}"
      break
    end
  end
  if score(hand) <= 21
    puts "you scored: #{score(hand)}"
  end
end
