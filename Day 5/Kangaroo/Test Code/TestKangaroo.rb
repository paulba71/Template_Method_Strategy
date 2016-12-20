require_relative '../Kangaroo'

kangaroo=Kangaroo.new
position=Point.new(0,0)
Grid.instance.init(10)
puts "Testing moves"
puts "Starting at position #{position.x}, #{position.y}"
until kangaroo.is_home?
  position=kangaroo.make_move
  kangaroo.print_position
end
puts "Got home!!!"
moves=kangaroo.get_valid_move_count
puts "Did it in #{moves} moves."
rolls=kangaroo.get_die_rolls
puts "Also took #{rolls} rolls of the die to get there"