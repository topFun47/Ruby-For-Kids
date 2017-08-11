# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Extra Credit: Big Numbers                               #
# Programmed By Pavel Stepanov                            #
# Using a combination of your terminal program            #
# and Interactive Ruby to do quick experiments            #
# that let you try new things with Ruby.                  #
# Assignment: Try changing the temperature calculation    #
#               to convert degrees Celsius to Fahrenheit. #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

puts "Try changing the temperature calculation to convert "
puts " degrees Celsius to Fahrenheit"
puts " "
puts " The original formula was degrees Fahreneit to Celsius"
puts " which was c = (f - 32) * 5 / 9"
puts " "
puts " After a couple attempts I decided to look up the "
puts "  formula online. I tested the formula and it doesn't work "
puts " "
puts "So I started to suspect that Ruby isn't converting 5/9 to 1.8"
puts " The correct formula that ruby understands is f = c * 1.8 + 32"
puts " "
puts " I tested out Chris's formula by puting 1.8 instead of 5/9 "
puts " I recieved a completly different answer from what he had"
puts " believed to of been the right answer all along"
puts ""
puts " I believe if i store 5/9 as a variable and assign the variable to"
puts " be a decimal. Than the formula will work"
