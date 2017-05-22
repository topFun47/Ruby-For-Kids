#
# Ruby For Kids Project 3: Bigger Hello World
# Programmed By: Chris Haupt
# Using Irb to learn how to manipulate strings.
# Code Tested By: Pavel Stepanov
# Extra Credit: Create the letters that make up your name
#               and print them.
#


p1 = "PPPPPPP "
p2 = "P      P"
p3 = p2
p4 = p1
p5 = "P       "
p6 = p5
p7 = p5
p = [p1,p2,p3,p4,p5,p6,p7]

a1 = "      A      "
a2 = "     A A     "
a3 = "    A   A    "
a4 = "   A     A   "
a5 = "  AAAAAAAAA  "
a6 = " A         A "
a7 = "A           A"
a = [a1,a2,a3,a4,a5,a6,a7]

u1 = "U       U"
u2 = u1
u3 = u1
u4 = u1
u5 = u1
u6 = u1
u7 = " U U U U "
u = [u1,u2,u3,u4,u5,u6,u7]

l1 = "L      "
l2 = l1
l3 = l1
l4 = l1
l5 = l1
l6 = l1
l7 = "L L L L"
l = [l1,l2,l3,l4,l5,l6,l7]

0.upto(6) do |count|
  puts "#{p[count]}#{a[count]}  #{u[count]}    #{l[count]}"
end
