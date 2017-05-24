#
# Extra Credit: Simple Adventure
# Programmed By: Chris Haupt
# A Random text adventure game.
# Code Tested By Pavel Stepanov
# Assignment: Play with the different settings for the game rules.
#              Does the game get more or less fun if you change how
#              often the monster attacks or how easy it is to find treasure?
#
# Started Tuesday May 23rd 2017
# Completed Tueday May 23rd 2017
#
# Changing these seetings below determines whether you will escape, how often you'll encounter a monster,
# how often you'll win a battle against a monster and how often you'll find treasure. I think the game began to be
# more fun when encountering a monster was as unlikly as finding treasure. And escapeing also had to be very unlikely.
# Everytime you encountered a monster, making it challenge also made the game more interesting.
#
#-Progress Report						8:37 PM
#	- 0hrs 25min
#	  - 3 / 5



def has_monster?
  if roll_dice(2, 6) >= 8
    true
  else
    false
  end
end

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
  if roll_dice(2, 6) >= 10
    true
  else
    false
  end
end
def has_treasure?
  if roll_dice(2, 6) >= 10
    true
  else
    false
  end
end
