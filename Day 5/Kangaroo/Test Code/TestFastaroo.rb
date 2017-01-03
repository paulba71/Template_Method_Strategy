require_relative '../Fastaroo'

fastaroo=Fastaroo.new
position=Point.new(0,0)
Grid.instance.init(10)
puts 'Testing moves'
puts "Starting at position #{position.x}, #{position.y}"
until fastaroo.is_home?
  position=fastaroo.make_move
  fastaroo.print_position
end
puts "Got home!!!"
moves=fastaroo.get_valid_move_count
puts "Did it in #{moves} moves."
rolls=fastaroo.get_die_rolls
puts "Also took #{rolls} rolls of the die to get there"