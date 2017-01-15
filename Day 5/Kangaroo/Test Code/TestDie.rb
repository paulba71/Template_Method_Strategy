require_relative '../Dice'


my_die=Die.new(DieMode::FOUR)
counter=0
while counter <20
  result=my_die.roll_die
  puts result.to_s
  counter = counter+1
end
my_die.print_log

my_die2=Die.new(DieMode::EIGHT)
counter=0
while counter <20
  result=my_die2.roll_die
  puts result.to_s
  counter = counter+1
end
my_die2.print_log

my_die=Die.new(DieMode::EIGHT)
p=my_die.convert_roll_to_move(1)
my_die.print_direction (1)
p.print_point
puts ""
p=my_die.convert_roll_to_move(2)
my_die.print_direction (2)
p.print_point
puts ""
p=my_die.convert_roll_to_move(3)
my_die.print_direction (3)
p.print_point
puts ""
p=my_die.convert_roll_to_move(4)
my_die.print_direction (4)
p.print_point
puts ""
p=my_die.convert_roll_to_move(5)
my_die.print_direction (5)
p.print_point
puts ""
p=my_die.convert_roll_to_move(6)
my_die.print_direction (6)
p.print_point
puts ""
p=my_die.convert_roll_to_move(7)
my_die.print_direction (7)
p.print_point
puts ""
p=my_die.convert_roll_to_move(8)
my_die.print_direction (8)
p.print_point
puts ""