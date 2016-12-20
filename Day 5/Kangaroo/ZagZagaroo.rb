require_relative 'Dice'
require_relative 'Animal'
require_relative 'eight_way_move'

class ZagZagaroo < Animal

  #set up with a eight-way move strategy

  def initialize
    @move_strategy=EightWayMove.new(Grid.instance)
    super
  end

end
