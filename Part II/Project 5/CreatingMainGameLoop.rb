"Creating the Main Game Loop"
# For the adventure project, you're going to start creating the main game loop first, where the rules and input and output of the game are.
# Then you'll create small methods to implement the functionality you need to run the game.
# You'll program as if these methods already exist and use Ruby to help fill in the missing functionality.


"Creating the room description and actions"
# First, you'll need to let the player know what's going on during that turn and describe what the player can do.

#1. Each turn , the player will have a number of options of what to do on her turn.
#   You'll use the actions variable to hold these choices in an array and reset the array each time you run through the game engine's loop.
#   You'll use the actions array to build a little menu for the user shortly.
#   Put the following code inside the while loop:
 actions = ["m - move", "s - search"]

#2. Print out what room number the player is currently in using the count you're storing in number_of_rooms_explored:
puts " Room number #{number_of_rooms_explored}"

#3. You'll use a method you write later to generate a new room in the cavern.
#   For now, just print out the emty variable you set up earlier:
puts current_room

#4. Now check to see whether there is a monster in the room, and if so, print out a message and add another action for the player(the ability to fight the monster!):
if monster
  puts "Oh no! An evil monster is in here with you!"
  actions <<"f - fight"
end

#5. Finally, display the actions menu for the layer so she knows what she can do:
  print "What do you do? (#{actions.join(', ')}):"


"Responding to player actions"
# Now it's time to get the player's command choice and have the game respond to it.

#1. Collect the player's command choice by using the gets method, and then see if a monster is present and if it takes action against the player.
#   Continue to place the following code inside the while loop after the previous section's code:
  player_action = gets.chomp
  if monster and monster_attack?
    damage_points = damage_points - 1
    puts "OUCH, the monster bit you!"
    end

#2. The Player will enter her commands by typing a single letter that is shorthand for the action.
#   If the player wants to move out of the current room of the cavern, she'll use the letter M.
#   Create a condition to check that and add the code you'll use for the move command:
if player_action == "m"
current_room = create_room
number_of_rooms_explored = number_of_rooms_explored + 1
monster = has_monster?
escaped = has_escaped?
end

#3. If the player chooses to search the room, she'll use the letter S.
#   Create the condition and code that handes searching:
elsif player_action == "s"
  if has_treasure
    puts "You found #{treasure}!"
    treasure_count = treasure_count + 1
  else
    puts "You look but don't find anything."
  end
  # when you look for treasure you, might attract another monster!
  if not monster
    monster = has_monster?
  end

  #4. The last command you'll suport is the flight command represented by the letter F.
  #   Add a condition to support it now.
elsif player_action == "f"
  if defeat_monster?
    monster = false
    puts "You defeated the scarey monster!"
  else
    puts "You attack and MISS!!!"
  end

  #5. Handle the case if the player enters a command that you don't support:
else
  puts "I don't know how to do that!"
end
puts 
