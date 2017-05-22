#
# Assignment: Shapes
# Programmed By: Chris Haupt
# Experiment with drawing ASCII art shapes using code.
# Code Tested By Pavel Stepanov
# Started Thursday May 11th
# Completed Sunday May 14th
#

def rectangle(height, width,outside_letter, inside_letter)
  1.upto(height) do |row|
    # Drawing code goes here
    if row == 1
      puts outside_letter * width
    elsif row == height
      puts outside_letter * width
    else
      middle = inside_letter * (width - 2)
      puts "#{outside_letter}#{middle}#{outside_letter}"
    end
  end
end

# Above here is the end of the rectangle method
def triangle( height, outside_letter, inside_letter)
# Code for the triangle will go here
1.upto(height) do |row|
  # Drawing code goes here for the next step
print ' ' * (height - row)
if row == 1
  puts "#{outside_letter * 2}"
elsif row == height
  puts outside_letter * height * 2
else
  middle = inside_letter * (row - 2)
  print "#{outside_letter}#{middle}#{inside_letter}"
  puts "#{inside_letter}#{middle}#{outside_letter}"
end
end
end



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

triangle(height, outside_letter, inside_letter)
rectangle(height, width * 2, outside_letter, inside_letter)
