require 'gosu'
require_relative 'tile'
require_relative 'level'
class Player < Tile
  attr_reader :score
  def initialize(window, column, row)
    super(window, column, row, Tile::PLAYER_TYPE)
    @score = 0
  end
  def add_score
    @score =+ 1
  end
end
