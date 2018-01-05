# # # # # # # # # # # # # # # # # # # # # # #
# Ruby For Kids Project 10: A-maze-ing      #
# Programmed By: Pavel Stepanov             #
# A mazelike treasure search game           #
# To run the program, use: ruby amazing.rb  #
# Started: Friday Jan 5th 2018              #
# Ended:                                    #
# # # # # # # # # # # # # # # # # # # # # # #
require 'gosu'
require_relative 'game'

class Amazing < Gosu::Window
def initialize
super(640, 640)
self.caption = "Amazing"
@game = Game.new(self)
# More code will go here
end
# Even more code will go here
end
window = Amazing.new
window.show
def update
@game.update
end
def draw
@game.draw
end
def button_down(id)
@game.button_down(id)
end
