require_relative 'Move'

class FastMove < Move

  def initialize (grid)
    @die=Die.new(DieMode::FAST)
    @grid=grid
  end

  def get_direction
    @die.roll_die
  end

  def convert_to_coordinates(direction)
    @die.convert_roll_to_move(direction)
  end

  def get_roll_count
    @die.get_roll_count
  end
end