require_relative '../grid'
require_relative '../Kangaroo'
require_relative '../ZagZagaroo'
require_relative '../diagaroo'
require_relative '../Point'

def test_single_die_rolls
  Grid.instance.init(10)
  kangaroo=Kangaroo.new
  zagzagaroo=ZagZagaroo.new
  diagaroo=Diagaroo.new

  p=kangaroo.make_move
  moves=kangaroo.get_die_rolls
  puts "Got to #{p.x},#{p.y} in #{moves} rolls of the die"

  p=zagzagaroo.make_move
  moves=kangaroo.get_die_rolls
  puts "Got to #{p.x},#{p.y} in #{moves} rolls of the die"

  p=diagaroo.make_move
  moves=diagaroo.get_die_rolls
  puts "Got to #{p.x},#{p.y} in #{moves} rolls of the die"
end

def test_cell_is_correct (obj, p, possible_cells)
  print "Testing #{obj.class} with a move to #{p.x}, #{p.y}:"
  valid=false
  possible_cells.each { |cell|
      if (cell.x == p.x && cell.y == p.y)
        valid=true
        break
      end
  }

  if valid
    puts " PASS"
  else
    puts " FAIL"
    raise 'Exception: wrong cell found...'
  end
end

def test_multiple_times_from_start (number_of_times)
  for i in 1..number_of_times
    kangaroo=Kangaroo.new
    p=kangaroo.make_move
    test_cell_is_correct kangaroo, p, [ Point.new(1,0), Point.new(0,1) ]

    zagzagaroo=ZagZagaroo.new
    p=zagzagaroo.make_move
    test_cell_is_correct zagzagaroo, p, [ Point.new(1,0), Point.new(0,1), Point.new(1,1) ]

    diagaroo=Diagaroo.new
    p=diagaroo.make_move
    test_cell_is_correct diagaroo, p, [ Point.new(1,1) ]
  end
end

def test_multiple_times_from_five_five (number_of_times)
  for i in 1..number_of_times
    kangaroo=Kangaroo.new
    kangaroo.move_to(Point.new(5,5))
    p=kangaroo.make_move
    test_cell_is_correct kangaroo, p, [ Point.new(6,5), Point.new(5,6), Point.new(4,5), Point.new(5,4)  ]

    zagzagaroo=ZagZagaroo.new
    zagzagaroo.move_to(Point.new(5,5))
    p=zagzagaroo.make_move
    test_cell_is_correct zagzagaroo, p, [ Point.new(6,4), Point.new(6,5), Point.new(6,6),
                                          Point.new(4,4), Point.new(4,5), Point.new(4,6),
                                          Point.new(5,4), Point.new(5,6)]

    diagaroo=Diagaroo.new
    diagaroo.move_to(Point.new(5,5))
    p=diagaroo.make_move
    test_cell_is_correct diagaroo, p, [ Point.new(4,4), Point.new(4,6), Point.new(6,6), Point.new(6,4) ]
  end
  # Check that the exception raising works.
  # test_cell_is_correct diagaroo,p, [Point.new(20,20)]
end



puts "Testing Single Rolls"
test_single_die_rolls

puts "Testing Multiple Rolls"
test_multiple_times_from_start(15)

puts "Testing Multiple Rolls starting at 5,5"
test_multiple_times_from_five_five(15)