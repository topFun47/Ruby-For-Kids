# # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Extra Credit: Shapes                                  #
# Programmed By Pavel Stepanov                          #
# Experiment with drawing ASCII art shapes using code.  #
# Assignment: Draw three triangles, one on top another  #
#             using a loop.                             #
# Thursday May 18th                                     #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # #

def triangle(height, outside_letter, inside_letter)
  1.upto(height) do |row|
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

def tree(height, outside_letter, inside_letter)
  1.upto(3) do |count|
    puts triangle(height, outside_letter, inside_letter)[count]
  end
end




puts "     Welcome to shapes"
print "Enter your shape size: "
shape_size = gets
shape_size = shape_size.chomp
print "Enter your outside leter: "
outside_letter = gets
outside_letter = outside_letter.chomp
print "Enter your inside letter: "
inside_letter = gets
inside_letter = inside_letter.chomp

height = shape_size.to_i

tree(height, outside_letter, inside_letter)
