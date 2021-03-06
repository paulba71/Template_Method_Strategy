require_relative 'Point'
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

  # the get_move method is the template method with each move strategy implementing
  # get_direction and convert_to_coordinates

  def get_move(starting_point)
    direction=get_direction
    p=convert_to_coordinates(direction)
    new_position=Point.new(starting_point.x + p.x, starting_point.y + p.y)
    new_position
  end

end