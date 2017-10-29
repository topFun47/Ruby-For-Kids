# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Extra Credit: Shapes                                      #
# Programmed By Pavel Stepanov                              #
# Experiment with drawing ASCII art shapes using code.      #
# Assignment: Create a method called flipped_traingle       #
#               and have it draw with the pointed end down. #
#Thursday May 18th                                          #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

def flipped_triangle(outside_letter, inside_letter, height)
  height.downto(1) do |row|
    print ' ' * (height - row)
    if
      row == 1
      puts outside_letter * 2
    elsif
      row == height
      puts outside_letter * height * 2
    else
      middle = inside_letter * (row - 2)
      print "#{outside_letter}#{middle}#{inside_letter}"
      puts "#{inside_letter}#{middle}#{outside_letter}"
    end
  end
end




puts "    Welcome to shapes"
print " Please enter your shape size "
shape_size = gets
shape_size = shape_size.chomp
print " Please enter your outside letter "
outside_letter = gets
outside_letter = outside_letter.chomp
print "Please enter your inside letter "
inside_letter = gets
inside_letter = inside_letter.chomp

puts "Your shape size will be #{shape_size} big"
puts "Your outside letter will be #{outside_letter}"
puts "Your inside letter will be #{inside_letter}"

height = shape_size.to_i

flipped_triangle(outside_letter, inside_letter, height)
