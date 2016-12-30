require_relative 'Point'
require_relative 'Grid'
require_relative 'local_observable'


class Animal

  include LocalObservable

  @valid_move_count

  attr_accessor :name

  def initialize
    super()
    @position=Point.new(0,0)
    @valid_move_count=0
  end

  def print_position
    @position.print_point
    puts ''
  end

  def move_to(p)
    @position.x=p.x
    @position.y=p.y
  end

  def get_position
    @position
  end

  def is_home?
    Grid.instance.is_point_at_end?(@position)
  end

  def get_valid_move_count
    @valid_move_count
  end

  def get_die_rolls
    @move_strategy.get_roll_count
  end

  def make_move
    new_position=@move_strategy.get_valid_move (@position)
    move_to(new_position)
    @valid_move_count+=1
    notify_observers
    new_position
  end

end