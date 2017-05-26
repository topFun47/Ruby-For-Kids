#
# Practice: Adventure
# Programmed By Pavel Stepanov
# A Random text adventure game
# Assignment: Practice re-writing Adventure
#

"Looking at the program skeleton"
# The first thing your're going to do is Create some of the main parts of the program to manage the game.
# Later , you'll fill this all in with the code that creates the cool features you planned out earlier.

#1. In Atom, add a short comment at the top of your adventure.rb
#   Ruby file to describe what the project is about

#2. Next, set up some starting values for variables you'll use to run the game.
number_of_rooms_explored = 1
treasure_count = 0
damage_points = 5
escaped = false
monster = false
current_room = ""

#3. Write the code that will introduce the player to the game.
puts "You are trapped in the dungeon. Collect treasure and try to escape"
puts "before an evil monster gets you!"
puts "To play, type one of the command choices on puts."
puts ""

#4. You'll be using a special loop to run the main part of the game,
#   so for now, add a placeholder for that code - you'll fill in the details later.
while damage_points > 0 and not escaped do
  # Game code will go here
end

#5. Write some code that will display the final results of the Game
#   when theplayer has either escaped or met an untimelt end.
#   Puts this code immediately after the end keyword from the while loop:
if damage_points > 0
  puts "You escaped"
  puts "You explored #{number_of_rooms_explored}"
  puts "You explored #{number_of_rooms_explored} rooms"
  puts "and found #{treasure_count} treasures."
else
  puts "OH NO! You didn't make it out!"
  puts "You explored #{number_of_rooms_explored} rooms"
  puts " before meeting your doom."
end

#6. Now is a good time to test your code to see what happens.
#   You might even find a type or two.
#   Save the program and switch over to your terminal and run the project
