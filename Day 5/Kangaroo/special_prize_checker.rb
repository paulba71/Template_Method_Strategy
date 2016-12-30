require_relative 'grid'
require_relative 'Point'

class SpecialPrizeChecker



  def initialize
    grid=Grid.instance
    @prize_position=Point.new rand(grid.get_size) , rand(grid.get_size)
    @number_of_prizes_remaining = 1
  end

  def get_cell
    @prize_position
  end

  def update(player)
    if @number_of_prizes_remaining.to_i>0
      player_position=player.get_position
      if player_position.x == @prize_position.x && player_position.y == @prize_position.y
        puts ''
        puts "Player #{player.name} has won a special prize for landing in cell (#{@prize_position.x},#{@prize_position.y}):"
        @number_of_prizes_remaining -= 1
      end
    end
  end

end