require_relative 'Animal'

class MoveMaker
  def initialize (players)
    @players=players
    @players_home=0
  end

  def make_moves
    move_count=1
    while @players_home < @players.length
      #puts "Making move: #{move_count}"
      @players.each { |player|
        if(!player.is_home?)
          player.make_move
          if(player.is_home?)
            @players_home += 1
            puts "Player #{player.class} made it home in position #{@players_home} after #{move_count} moves"
          end
        end
        move_count += 1
      }
    end
  end
end