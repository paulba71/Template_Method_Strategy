require_relative 'drink'

class Nip < Drink
  def initialize(real_drink)
    @real_drink=real_drink
  end

  @type = ""
  @qualtity=0
  @cost=0

  def type
    @type
  end

  def description
    @real_drink.description + " + #{@quantity} shots(s) of #{@type} nip"
  end

  def cost
    @real_drink.cost +  (@quantity*@cost)

  end

  def declare
    puts "Drink is #{description} and costs #{cost}"
  end

  def add (type, quantity, cost)
    @type=type
    @quantity=quantity
    @cost=cost
  end
end
