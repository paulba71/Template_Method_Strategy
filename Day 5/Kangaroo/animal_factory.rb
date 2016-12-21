require_relative 'Kangaroo'
require_relative 'ZagZagaroo'
require_relative 'Diagaroo'

class AnimalFactory
  def initialize
    @characters=[]
  end

  def create(number_to_create)
    num=0
    number_to_create.times do
      newone=nil
      characterMode=rand(3)
      case characterMode
        when 0
          # Create a Kangaroo
          newone=Kangaroo.new


        when 1
          newone=ZagZagaroo.new


        when 2
          newone=Diagaroo.new


      end
      newone.name = "Player"+num.to_s
      @characters << newone
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