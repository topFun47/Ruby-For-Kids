require 'gosu'
require_relative 'tile'
require_relative 'level'
class Player < Tile
  attr_reader :score
  def initialize(window, column, row)
    super(window, column, row, Tile::PLAYER_TYPE)
    @score = 0
  end
end
def pick_up(tile)
  if tile.is_treasure?
    tile.make_empty
  end
end
