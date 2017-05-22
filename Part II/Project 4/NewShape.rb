#
# Ruby For Kids Project 4: Shapes
# Programmed By: Chris Haupt
# Experiment with drawing ASCII art shapes using code.
# Code Tested By: Pavel Stepanov
# Extra Credit: Come up with  a new shape method.
# Monday May 15th
#

def new_shape(height, outside_letter, inside_letter)
  1.upto(height) do |row|
    print ' ' * (height - row)
    if
      row == 1
      puts "#{outside_letter * height * 2}"
    elsif
      row == height
      puts outside_letter * height * 2
    else
      middle = inside_letter * (height - 2)
      print "#{outside_letter}#{middle}#{inside_letter}"
      puts "#{inside_letter}#{middle}#{outside_letter}"
    end
  end
end


puts "Welcome to shapes"
puts "Today we are printing a rhombus"
puts "and you get to choose what size"
puts "the sahpe will be"
print "What size should the shape be? "
shape_size = gets
shape_size = shape_size.chomp
puts "What letter should be used for"
print "the edge? "
outside_letter = gets
outside_letter = outside_letter.chomp
puts "What letter should be used for"
print "the inside? "
inside_letter = gets
inside_letter = inside_letter.chomp

puts "Ok, making your rhombus #{shape_size} big"
puts "using #{outside_letter} for the edge"
puts "and #{inside_letter} for the inside."

height = shape_size.to_i

new_shape(height, outside_letter, inside_letter)
