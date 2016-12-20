require_relative 'Move'

class EightWayMove < Move

  def initialize (grid)
    @die=Die.new(DieMode::EIGHT)
    @grid=grid
  end

  def get_direction
    direction=@die.roll_die
  end

  def convert_to_coordinates(direction, starting_point)
    p=@die.convert_roll_to_move(direction)
  end

  def get_roll_count
    @die.get_roll_count
  end
end