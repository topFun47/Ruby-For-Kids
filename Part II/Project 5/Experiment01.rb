#
# Experiment01: Monster Generator
# Programmed By Pavel Stepanov
# Experiment began with the while loop, and concluded with the "monster generator"
# Experiment on the while loop examined it's nessasary components to function properly.
# later resulting in  how to create a "monster generater".
# The monster generator was used for an extra credit assignment
# Yesturday that assignment was attempted once and failed.
# Now with this experiment, a simple adventure game became a little more
# interesting with the added monster descrition.
# Created on Monday, May 22nd 2017
#

def create_room
  "You are in a #{size} #{color} #{room_type}. There is an exit on the #{direction} wall."
  end
def size
  ["huge", "large", "big", "regular", "small", "tiny"].sample
end
def color
  ["red", "blue", "green", "dark", "golden", "crystal"].sample
end
def room_type
  ["cave", "treasure room", "rock cavern", "tomb", "guard room", "lair"].sample
end
def direction
  ["north", "south", "east", "west"].sample
end

def create_monster
  "Oh no! A #{size} #{color} #{type} monster is in here with you!"
end
def type
  ["evil", "nice", "scary"].sample
end

number_of_rooms_explored = 1
damage_points = 5
escaped = false
create_room
monster = false
create_monster


while damage_points > 0 and  not escaped do
    # Game code will go here
    actions =["m - move", "s - search"]
    puts "Room number #{number_of_rooms_explored}"
    puts create_room
    if monster
    create_monster
      actions << "f - fight"
    end
  print "What do you do? (#{actions.join(', ')}): "
  player_action = gets.chomp
  if monster and monster_attack?
    damage_points = damage_points - 1
    puts "OUCH, the monster bit you!"
  end
end
