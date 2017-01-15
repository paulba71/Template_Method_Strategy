require_relative 'DieHistory'
require_relative 'Point'

class DieMode
  FOUR=1
  EIGHT=2
  DIAGONAL=3
  FAST=4
end

class Direction
  NORTH=1
  EAST=2
  SOUTH=3
  WEST=4
  NORTHEAST=5
  SOUTHEAST=6
  SOUTHWEST=7
  NORTHWEST=8
end

class Die


  def initialize (mode)
    @mode = mode
    @log=DieHistory.new
  end

  def roll_die
    num=0
    if @mode==DieMode::FOUR
      num = 1+Random.rand(4)
    end
    if @mode==DieMode::EIGHT
      num = 1+Random.rand(8)
    end
    if @mode==DieMode::DIAGONAL
      num=rand(5..8)
    end
    if @mode==DieMode::FAST
      num=1+Random.rand(2)
    end
    @log.add_roll(num) if (num!=nil)
    num
  end

  def print_direction (direction)
    case direction
      when Direction::NORTH
        print('NORTH ')
      when Direction::NORTHEAST
        print('NORTHEAST ')
      when Direction::EAST
        print('EAST ')
      when Direction::SOUTHEAST
        print('SOUTHEAST ')
      when Direction::SOUTH
        print('SOUTH ')
      when Direction::SOUTHWEST
        print('SOUTHWEST ')
      when Direction::WEST
        print('WEST ')
      when Direction::NORTHWEST
        print('NORTHWEST ')
      else
        print('unknown direction')
    end
  end

  def convert_roll_to_move (direction)
    p=Point.new(0,0)
    case direction
      when Direction::NORTH
        p.y=p.y+1
      when Direction::NORTHEAST
        p.x=p.x+1
        p.y=p.y+1
      when Direction::EAST
        p.x=p.x+1
      when Direction::SOUTHEAST
        p.x=p.x+1
        p.y=p.y-1
      when Direction::SOUTH
        p.y=p.y-1
      when Direction::SOUTHWEST
        p.x=p.x-1
        p.y=p.y-1
      when Direction::WEST
        p.x=p.x-1
      when Direction::NORTHWEST
        p.x=p.x-1
        p.y=p.y+1
      else
        puts 'invalid direction - cant convert to move'
    end
    p
  end

  def get_roll_count
    @log.roll_count
  end

  def print_log
    @log.print_history
  end

  def print_summary_log
    @log.print_history_summary
  end

end

