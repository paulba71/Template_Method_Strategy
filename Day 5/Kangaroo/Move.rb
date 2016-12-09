require_relative "Point"
require_relative 'Dice'
require_relative 'grid'

class Move

  def get_valid_move(starting_position)
    new_position=get_move(starting_position)
      until @grid.is_point_within_grid?(new_position)
      new_position=get_move(starting_position)
    end
    new_position
  end

  def get_move(starting_point)
    direction=get_direction
    p=convert_to_coordinates(direction,starting_point)
    new_position=Point.new(starting_point.x + p.x, starting_point.y + p.y)
    return new_position
  end

end