require_relative 'Kangaroo'
require_relative 'ZagZagaroo'
require_relative 'Diagaroo'
require_relative 'Fastaroo'
require_relative 'special_prize_checker'

class AnimalFactory
  def initialize
    @characters=[]
    @grand_prize_checker=SpecialPrizeChecker.new
    @grand_prize_checker.set_grand_prize_mode
  end

  def create(number_to_create)
    num=0
    number_to_create.times do
      new_one=nil
      character_mode=rand(4)
      case character_mode
        when 0
          # Create a Kangaroo
          new_one=Kangaroo.new


        when 1
          # Create a Zagzagaroo
          new_one=ZagZagaroo.new


        when 2
          # Create a Diagaroo
          new_one=Diagaroo.new

        when 3
          # Create a Fastaroo
          new_one=Fastaroo.new

        else
          puts 'Invalid animal. Cant create'


      end
      new_one.name = 'Player'+num.to_s
      prize_checker=SpecialPrizeChecker.new
      prize_checker.get_cell.print_point
      new_one.add_observer(prize_checker)
      new_one.add_observer(@grand_prize_checker)
      @characters << new_one
      num+=1
    end
    @characters
  end

  def print_out
    count=0
    @characters.each do |element|
      puts "Animal: #{element.name} is a #{element.class}"
      count+=1
    end
  end

end