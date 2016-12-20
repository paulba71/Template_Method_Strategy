require_relative '../diagaroo'

diagaroo=Diagaroo.new
position=Point.new(0,0)
Grid.instance.init(10)
puts "Testing moves"
puts "Starting at position #{position.x}, #{position.y}"
until diagaroo.is_home?
  position=diagaroo.make_move
  diagaroo.print_position
end
puts "Got home!!!"
moves=diagaroo.get_valid_move_count
puts "Did it in #{moves} moves."
rolls=diagaroo.get_die_rolls
puts "Also took #{rolls} rolls of the die to get there"