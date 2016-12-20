require_relative '../ZagZagaroo'

zigzagaroo=ZagZagaroo.new
position=Point.new(0,0)
Grid.instance.init(10)
puts "Testing moves"
puts "Starting at position #{position.x}, #{position.y}"
until zigzagaroo.is_home?
  position=zigzagaroo.make_move
  zigzagaroo.print_position
end
puts "Got home!!!"
moves=zigzagaroo.get_valid_move_count
puts "Did it in #{moves} moves."
rolls=zigzagaroo.get_die_rolls
puts "Also took #{rolls} rolls of the die to get there"