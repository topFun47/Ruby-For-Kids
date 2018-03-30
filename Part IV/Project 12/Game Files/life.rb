# # # # # # # # # # # # # # # # # # # # # # # # #
# Ruby For Kids Project 12: Life                #
# Programmed By: Pavel  Stepanov                #
# A graphical version of Conway's Game of Life  #
# Started: Thursday March 28th 2018             #
# Ended: Friday March 30th 2018                 #
# # # # # # # # # # # # # # # # # # # # # # # # #
require 'gosu'
require_relative 'game'

class Life < Gosu::Window

  def initialize(generations, sim)
    super(800, 800)
    self.caption = "Game of Life"
    @game = Game.new(self, generations, sim)


  def update
    @game.update
  end

  def draw
    @game.draw
  end
end

puts "Welcome to the Game of Life"
print "How many generations? (0 for infinite) "
generations = gets.to_i
print "Pick a simulation (1-5) "
sim = gets.to_i

window = Life.new(generations, sim)
window.show
end
