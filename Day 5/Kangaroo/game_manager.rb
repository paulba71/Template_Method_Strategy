require_relative 'grid'
require_relative 'four_way_move'
require_relative 'eight_way_move'
require_relative 'diagonal_move'
require_relative 'Point'
require_relative 'animal_factory'

class GameManager

  def initialize
    @grid=Grid.instance
    @grid.init(3)
  end

  def run
    # Ask for a grid size
    # Use a factory to create an animal
    # loop until all animals get home
    # Print out the  number of moves
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

  def test_factory
    factory=AnimalFactory.new
    puts "Creating 5"
    factory.create(5)
    factory.print_out
    puts "---------------------"
    puts "Creating 10"
    factory.create(10)
    factory.print_out
    puts "---------------------"
    puts "Creating 15"
    factory.create(15)
    factory.print_out
  end
end

game=GameManager.new
game.test_die_rolls
game.test_factory