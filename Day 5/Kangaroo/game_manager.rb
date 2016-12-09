require_relative 'grid'
require_relative 'four_way_move'
require_relative 'eight_way_move'
require_relative 'diagonal_move'
require_relative 'Point'

class GameManager

  def initialize
    @grid=Grid.new(3)
  end

  def run
    # Ask for a grid size
    # Use a factory to create an animal
  end

  def test_die_rolls
    #@grid=Grid.new(3) # 3 x 3 grid
    four_way_move=FourWayMove.new(@grid)
    eight_way_move=EightWayMove.new(@grid)
    diagonal_way_move=DiagonalMove.new(@grid)
    starting_point=Point.new(0,0)
    p=four_way_move.get_valid_move(starting_point)
    moves=four_way_move.get_move_count
    puts "Got to #{p.x},#{p.y} in #{moves} rolls of the die"
    p=eight_way_move.get_valid_move(starting_point)
    moves=eight_way_move.get_move_count
    puts "Got to #{p.x},#{p.y} in #{moves} rolls of the die"
    p=diagonal_way_move.get_valid_move(starting_point)
    moves=diagonal_way_move.get_move_count
    puts "Got to #{p.x},#{p.y} in #{moves} rolls of the die"
  end
end

game=GameManager.new
game.test_die_rolls