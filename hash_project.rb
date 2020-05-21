# Write a program that groups people based on their favourite
# things. In should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Put the `people` into groups where each group has people who share
#   the same favourite thing.
# * Print out the names of the people in each group.  Before each
#   group, it should say which favourite thing the people in the group
#   share.
#
# * Example output:
#   ```
#   Enter category to group people by
#   sport
#   squash
#   Mary
#   Lauren
#   Govind
#   weightlifting
#   Isla
#   Awad
#   cycling
#   Sam
#   Will
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

cat_sport = {}
cat_fruit = {}


people.each do |person|

  sport = person["sport"]
  fruit = person["fruit"]

  if cat_sport[sport] == nil
    cat_sport[sport] = []
  end
    cat_sport[sport].push(person["name"])

  if cat_fruit[fruit] == nil
    cat_fruit[fruit] = []
  end
    cat_fruit[fruit].push(person["name"])
end

puts "What category do you want to search? fruit or sport"

answer = gets.chomp

if answer == "sport"

  cat_sport.each do |sport, name|
    puts sport
    puts name
  end

else answer == "fruit"

  cat_fruit.each do |fruit, name|
    puts fruit
    puts name
  end

end
