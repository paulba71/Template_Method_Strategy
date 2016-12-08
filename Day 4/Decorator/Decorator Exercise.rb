
# Mel Ó Cinnéide
# with thanks to Freeman&co. for the example

class Decaf
  def description
    'decaffeinated coffee'
  end
  def cost
    2.0
  end
end

class Espresso
  def description
    'espresso coffee'
  end
  def cost
    1.5
  end
end

class Milk
  def description
    'milk'
  end
  def cost
    0.50
  end
end

class Sugar
  def description
    'sugar'
  end
  def cost
    0.20
  end
end

class DecafWithMilkAndSugar
  def initialize
    @coffee = Decaf.new
    @milk = Milk.new
    @sugar = Sugar.new
  end
  def description
    "#{@coffee.description} #{@milk.description} #{@sugar.description}"
  end
  def cost
    @coffee.cost + @milk.cost + @sugar.cost 
  end
end

my_coffee = DecafWithMilkAndSugar.new
puts 'My coffee is:'
puts my_coffee.description
puts "and costs: €#{my_coffee.cost}"

