
# Mel Ó Cinnéide
# with thanks to Vince Huston for the example

require_relative 'child_behaviour'
require_relative 'adult_behavior'
require_relative 'pensioner_behaviour'
require_relative 'teenager_behaviour'
require_relative 'state_manager'

class Person 
	def initialize  
		@age = 0
    @state_manager=StateManager.instance
		@behaviour = @state_manager.get_state(@age)
	end

	def incr_age
		@age+=1;
    @behaviour=@state_manager.get_state(@age)
  end

  def set_age(age)
    @age=age
    @behaviour = @state_manager.get_state(@age)
  end
	 
	def vote()
		@behaviour.vote
	end

	def apply_for_buspass
		@behaviour.apply_for_buspass
	end
					
	def conscript
    @behaviour.conscript
  end

  def book_retirement_home
    @behaviour.book_retirement_home
  end

  def apply_for_medical_card
    @behaviour.apply_for_medical_card
  end
end

@p = Person.new

def test_person(i)
  puts "-----------------------------------"
  puts "Person is now #{i} years old"
  @p.apply_for_buspass();
  @p.vote();
  @p.conscript();
  @p.book_retirement_home();
  @p.apply_for_medical_card();
  puts "-----------------------------------"
end

## Test all

for i in 1..80
  @p.incr_age();
  test_person(i)
end

## Test jumping around
@p.set_age(7)
puts "EXPECT CHILD"
test_person (7)

@p.set_age(90)
puts "EXPECT PENSIONER"
test_person (90)

@p.set_age(4)
puts "CHILD"
test_person (4)

@p.set_age(14)
puts "EXPECT TEENAGER"
test_person (14)

@p.set_age(45)
puts"EXPECT ADULT"
test_person (45)

@p.set_age(70)
puts "EXPECT PENSIONER"
test_person (70)