require_relative 'drink'

class Milk < Drink
  def initialize(real_drink)
    @real_drink=real_drink
  end

  @type = ""
  @qualtity=0
  @cost=0
  @milk_temp=:cold # Local state

  def type
    @type
  end

  def description
    @real_drink.description + " + #{@quantity} measure(s) of #{@type} milk"
  end

  def cost
    @real_drink.cost +  (@quantity*@cost)
  end

  def heat_milk
    puts "Heating milk"
    sleep(2)
    puts "milk is heated"
    @milk_temp=:hot
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
