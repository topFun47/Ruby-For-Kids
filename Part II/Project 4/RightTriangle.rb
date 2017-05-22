#
# Extra Credit: Shapes
# Programmed By: Chris Haupt
# Experiment with drawing ASCII art shapes using code.
# Code Tested By Pavel Stepanov
# Assignment: Seperate the triangle code,
#             and draw half a triangle.
# Monday May 15th
#

def right_triangle(height, outside_letter, inside_letter)
  1.upto(height) do |row|
    print ' ' * (height - row)
    if
      row == 1
      puts "#{outside_letter * 1}"
    elsif
      row == height
      puts outside_letter * height * 1
    else
      middle = inside_letter * (row - 2)
      puts "#{outside_letter}#{middle}#{outside_letter}"
    end
  end
end


puts "Welcome to shapes"
print "shapes size: "
shapes_size = gets
shapes_size = shapes_size.chomp
print "outside letter: "
outside_letter = gets
outside_letter = outside_letter.chomp
print "inside letter: "
inside_letter = gets
inside_letter = inside_letter.chomp

height = shapes_size.to_i

right_triangle(height, outside_letter, inside_letter)
