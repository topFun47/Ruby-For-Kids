# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Experiment01: Find Bug                                        #
# Programmed By Pavel Stepanov                                  #
# Experiment with re-writing the code completely fixing the bug #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

puts " "
puts "Welcome to shapes"
puts " "
puts " "
print "How big do you want your number? "
shapes_size = gets
shapes_size = shapes_size.chomp
print "Your outside letter? "
outside_letter = gets
outside_letter = outside_letter.chomp
print "Your inside letter? "
inside_letter = gets
inside_letter = inside_letter.chomp
puts " "
puts " "
puts "Your shape size is #{shapes_size}
Your outside letter is #{outside_letter}
Your inside letter is #{inside_letter}"

height = shapes_size.to_i
width = shapes_size.to_i


1.upto(height) do |row|
  if row  == 1
    puts outside_letter * width
  elsif row == height
    puts outside_letter * width
  else
    middle = inside_letter * (width - 2)
    puts "#{outside_letter}#{middle}#{outside_letter}"
  end
end
