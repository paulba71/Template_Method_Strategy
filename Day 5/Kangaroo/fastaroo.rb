require_relative 'grid'
require_relative 'Animal'
require_relative 'fast_move'

class Fastaroo < Animal

  #set up with a four way move strategy

  def initialize
    @move_strategy=FastMove.new(Grid.instance)
    super
  end

end