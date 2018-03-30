







require 'gosu'
require_relative 'grid'
require_relative 'cell'
class Game

  GENERATION_FREQUENCY = 100
  SEED_BLINKER = [[11,10],[11,11],[11,12]]
  SEED_LIST    = [SEED_BLINKER]
  GRID_WIDTH   = 80
  GRID_HEIGHT  = 80
  def initialize(window, generations, sim)
    @window      = window
    seed           = SEED_LIST[sim - 1]
    @grid          = Grid.new(@window, GRID_WIDTH, GRID_HEIGHT, seed)
    @font        = Gosu::Font.new(32)
    @time_now = @time_start = Time.now.to_i
    @last_update = 0
    @generation  = 0
    @max_generations = generations.to_i
    @status_message = "Completed"
  end
  def simulation_over?
    (@max_generations > 0) && (@generation >= @max_generations)
  end
  def draw
    @grid.draw
    draw_hud
  end
  def draw_hud
    if simulation_over?
      @font.draw("Sim all done!", 200, 150, 10, 2, 2)
      @font.draw("#{@status_message} in #{@generation} generations after #{time_in_seconds} seconds!", 110, 300, 10)
    else
      @font.draw("Time: #{time_in_seconds}", 4, 2, 10)
      @font.draw("Generation: #{@generation}", 540, 2, 10)
    end
  end
  def time_in_seconds
    @time_now - @time_start
  end
  def update
    this_time = Gosu::milliseconds()
    if (this_time - @last_update > GENERATION_FREQUENCY && (@max_generations == 0 || @generation < @max_generations))
      new_grid = evolve
      @generation += 1
      if new_grid.lifeless?
        @status_message = "Life dissapeared"
        @max_generations = @generation
      elsif new_grid == @grid
        @status_message = "Life froze"
        @max_generations = @generation
      end
      @grid = new_grid
      @last_update = this_time
      @time_now = Time.now.to_i
    end
  end
  def evolve
    life = []
    @grid.each_cell_position do |x, y|
      if determine_fate(x, y)
        life << [x, y]
      end
    end
    Grid.new(@window, GRID_WIDTH, GRID_HEIGHT, life)
  end
  def determine_fate(x, y)
    cell = @grid.cell(x, y)
    neighbors = @grid.surrounding_cells(x, y)
    score = 0
    neighbors.each {|n| score += n.life_points}
    (cell.alive? && score >= 2 && score <= 3 ) || (score == 3)
  end
end 
