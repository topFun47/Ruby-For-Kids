#
# Extra Credit: Simple Adventure
# Programmed By: Chris Haupt
# A Random text adventure game.
# Code Tested By: Pavel Stepanov
# Assignment: Create "monster generator" that makes the
#             description of the monster more interesting.
# Started Sunday May 21st 2017
# Completed Monday May 22nd 2017
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
def has_monster?
  if roll_dice(2, 6) >= 8
    true
  else
    false
  end
end

def roll_dice(number_of_dice, size_of_dice)
  total = 0
  1.upto(number_of_dice) do
    total = total + rand(size_of_dice) + 1
  end
  return total
end
def has_escaped?
  if roll_dice(2, 6) >= 11
    true
  else
    false
  end
end
def monster_attack?
  if roll_dice(2, 6) >=9
    true
  else
    false
  end
end
def defeat_monster?
  if roll_dice(2, 6) >= 4
    true
  else
    false
  end
end
def has_treasure?
  if roll_dice(2, 6) >= 8
    true
  else
    false
  end
end
def treasure
  ["gold coins", "gems", "a magic wand", "an enchanted sword"].sample
end
def create_monster
  "Oh no! A #{size} #{color} #{type} monster is in here with you!"
end
def type
  ["evil", "nice", "scary"].sample
end

number_of_rooms_explored = 1
treasure_count = 0
damage_points = 5
escaped = false
monster = false
current_room            = create_room


puts "You are trapped in a dungeon. Collect treasure and try to escape"
puts "before an evil monster gets you!"
puts "To play, type one of the command choices on each turn."
puts ""

while damage_points > 0 and not escaped do
    # Game code will go here
    actions =["m - move", "s - search"]
    puts "Room number #{number_of_rooms_explored}"
    puts current_room
    if monster
      puts create_monster
      actions << "f - fight"
    end
    print "What do you do? (#{actions.join(', ')}): "
    player_action = gets.chomp
    if monster and monster_attack?
      damage_points = damage_points - 1
      puts "OUCH, the monster bit you!"
    end
    if player_action == "m"
      current_room = create_room
      number_of_rooms_explored = number_of_rooms_explored + 1
      monster = has_monster?
      escaped = has_escaped?
    elsif player_action == "s"
      if has_treasure?
        puts "You found #{treasure}!"
        treasure_count = treasure_count + 1
      else
        puts "You look, but don't find anything."
      end
      # when you look for treasure,
      # you might attract another monster!
      if not monster
        monster = has_monster?
      end
    elsif player_action == "f"
      if defeat_monster?
        monster = false
        puts "You defeated the scary monster!"
      else
        puts "You attack and MISS!!!"
      end
    else
      puts "I don't know how to do that!"
    end
    puts ""



if damage_points > 0
  puts "You escaped!"
  puts "You explored #{number_of_rooms_explored} rooms"
  puts "and found #{treasure_count} treasures."
else
  puts "OH NO! You didn't make it out!"
  puts "You explored #{number_of_rooms_explored} rooms"
  puts "before meeting your doom."
end
end
