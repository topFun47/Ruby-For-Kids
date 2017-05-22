#
# Ruby For Kids Project 4: Shapes
# Programmed By: Chris Haupt
# Experiment with drawing AScII art shapes using code.
# Code Tested By: Pavel Stepanov
# Practice: Shapes.rb 
#


puts "Welcome to shapes"
print "How big do you want your shape? "
shapes_size = gets
shapes_size = shapes_size.chomp
print "Outside letter: "
outside_letter = gets
outside_letter = outside_letter.chomp
print "Inside letter: "
inside_letter = gets
inside_letter = inside_letter.chomp
puts "About to draw a shape #{shapes_size} big"
puts "using #{outside_letter} for the edge"
puts "and #{inside_letter} for the inside"

height = shapes_size.to_i
width = shapes_size.to_i

1.upto(height) do |row|
  # Drawing code goes here.
  if row == 1
    puts outside_letter * width
  elsif row == height
    puts outside_letter * width
  else
    middle = inside_letter * (width - 2)
    puts "#{outside_letter}#{middle}#{outside_letter}"
  end
end
