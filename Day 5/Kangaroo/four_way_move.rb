require_relative "Move"

class FourWayMove < Move

  def initialize (grid)
    @die=Die.new(DieMode::FOUR)
    @grid=grid
  end

  #def get_move(starting_point)
  #  direction=@die.roll_die
  #  p=@die.convert_roll_to_move(direction)
  #  new_position=Point.new(starting_point.x + p.x, starting_point.y + p.y)
  #  return new_position
  #end

  def get_direction
    direction=@die.roll_die
  end

  def convert_to_coordinates(direction, starting_point)
    p=@die.convert_roll_to_move(direction)
  end

  def get_move_count
    @die.get_roll_count
  end
end