class Drink

  def type
    'Hot'
  end

  def description
    'hot water'
  end

  def cost
    1.5
  end

  def declare
    puts "Drink is #{description} and costs €#{cost}"
  end
end

#d=Drink.new
#d.produce