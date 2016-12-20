require_relative 'grid'
require_relative 'Animal'
require_relative 'diagonal_move'


class Diagaroo < Animal
  #set up with a diagonal move strategy

  def initialize
    @move_strategy=DiagonalMove.new(Grid.instance)
    super
  end

end