require_relative 'grid'
require_relative 'four_way_move'
require_relative 'eight_way_move'
require_relative 'diagonal_move'
require_relative 'Point'
require_relative 'animal_factory'
require_relative 'move_maker'

class GameManager

  def initialize
    @grid=Grid.instance
  end

  def run
    # Ask for a grid size
    print 'Welcome to the races: Please specify the size of the game (0..100): '
    size=gets()
    puts "Grid will be #{size.to_i} by #{size.to_i}"
    @grid.init(size.to_i)
    # Use a factory to create an animal
    factory=AnimalFactory.new
    animals=factory.create(8)
    puts 'Game is starting with the following aninmals'
    factory.print_out
    # loop until all animals get home - using the move_manager
    mover=MoveMaker.new(animals)
    mover.make_moves
    # Print out the  number of moves
  end

end

