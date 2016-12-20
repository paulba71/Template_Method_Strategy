require_relative "Point"

require 'singleton'

class Grid

  include Singleton

  attr_reader :home_position
  @size=0

  def init(size)
    @size=size
    @home_position=Point.new(size-1,size-1)
  end

  def is_point_within_grid? (p)
    if p.x < 0 || p.x >= @size
      return false
    end

    if p.y < 0 || p.y >= @size
      return false
    end

    return true
  end

  def is_point_at_end? (p)
    if (p.x == @size-1 && p.y == @size-1)
      true
    else
      false
    end
  end

end #class
