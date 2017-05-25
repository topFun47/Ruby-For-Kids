#
# Extra Credit: Big Numbers
# Programmed By Pavel Stepanov
# Using a combination of your terminal program
# and Interactive Ruby to do quick experiments
# that let you try new things with Ruby.
# Assignment: Using variables to store all the ages
#               of my family, and adding them together.
#

tanyas_age = 28
valyas_age = 26
natashas_age = 34
total_sisters_age = tanyas_age + valyas_age + natashas_age

genas_age = 20
my_age = 24

total_brothers_age = genas_age + my_age

moms_age = natashas_age + 19
dads_age = moms_age + 8
total_parents_age = moms_age + dads_age

total_families_age = total_sisters_age + total_brothers_age + total_parents_age

puts "Your family has 3 sisters 2 brothers and 2 parents"
puts "Your Sisters names and ages are Valya #{valyas_age}"
puts "                                Tanya #{tanyas_age}"
puts "                          and Natasha #{natashas_age}"
puts "Your sisters total ages combined are  #{total_sisters_age}"
puts " "
puts "The brothers names and ages are Gena  #{genas_age}"
puts "                            and Paul  #{my_age}"
puts "The brothers total ages combined are  #{total_brothers_age}"
puts " "
puts "The parents names and ages are  Mom   #{moms_age}"
puts "                            and dad   #{dads_age}"
puts "Your parents total ages combined are  #{total_parents_age}"
puts " "
puts "__________________________________________+ "
puts "Your families total ages combined are #{total_families_age}"
