require_relative 'Kangaroo'
require_relative 'ZagZagaroo'
require_relative 'Diagaroo'

class AnimalFactory
  def initialize
    @characters=[]
  end

  def create(number_to_create)
    number_to_create.times do
      num=0
      characterMode=rand(3)
      case characterMode
        when 0
          # Create a Kangaroo
          newone=Kangaroo.new
          @characters << newone

        when 1
          newone=ZagZagaroo.new
          @characters << newone

        when 2
          newone=Diagaroo.new
          @characters << newone

      end
    end
    @characters
  end

  def print_out
    count=0
    @characters.each do |element|
      puts "Animal: #{count} is a #{element.class}"
      count+=1
    end
  end

end