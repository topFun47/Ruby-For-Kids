#
# Practice: Adventure
# Programmed By: Chris Haupt
# A Random text adventure game
# Code Tested By Pavel Stepanov
# Assignment: Practice re-writing Adventure
#
#

# Step 1
# Create some of the main parts of the program to manage the game.
# Later , you'll fill this all in with the code that creates the
# cool features you planned out earlier.
#

# Next, set up some starting values for variables you'll use to run the game.
number_of_rooms_explored = 1
treasure_count = 0
damage_points = 5
escaped = false
monster = false
current_room = ""

# Than, Write the code that will introduce the player to the game.
puts "You are trapped in the dungeon. Collect trease and try to escape"
puts "before an evil monster gets you!"
puts "To play, type one of the command choices on puts."
puts ""

# After than, You'll be using a special loop to run the main part of the game,
# so for now, add a placeholder for that code - you'll fill in the details later.
while damage_points > 0 and not escaped do
  # Game code will go here
end

# Step
if damage_points > 0
  puts "You escaped"
