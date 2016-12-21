require_relative 'Animal'

class MoveMaker
  def initialize (players)
    @players=players
    @players_home=0
  end

  def make_moves
    move_count=1
    while @players_home < @players.length
      sleep_break=0.10
      #print "Making move: #{move_count}"
      print '.'
      sleep sleep_break
      @players.each { |player|
        if(!player.is_home?)
          player.make_move
          if(player.is_home?)
            @players_home += 1
            puts ''
            puts "#{player.name} - a #{player.class} - made it home in position #{@players_home} after #{move_count} moves"
            puts ''
            sleep_break -= 0.01
          end
        end
        move_count += 1
      }
    end
  end
end