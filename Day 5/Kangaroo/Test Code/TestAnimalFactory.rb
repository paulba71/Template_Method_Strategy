require_relative '../animal_factory'

def test_factory
  factory=AnimalFactory.new
  puts "Creating 5"
  factory.create(5)
  factory.print_out
  puts "---------------------"
  puts "Creating 10"
  factory.create(10)
  factory.print_out
  puts "---------------------"
  puts "Creating 15"
  factory.create(15)
  factory.print_out
end

test_factory