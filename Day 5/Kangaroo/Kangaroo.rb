require_relative 'grid'
require_relative 'Animal'
require_relative 'four_way_move'

class Kangaroo < Animal

  #set up with a four way move strategy

  def initialize
    @move_strategy=FourWayMove.new(Grid.instance)
    super
  end

end
