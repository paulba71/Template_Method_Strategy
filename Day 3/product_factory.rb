class ProductFactory


  @@instance
  puts "Creating the factory"
  @@instance=ProductFactory.new

  def self.instance
    return @@instance
  end

  def create_product_A
    instance=ProductA.new
  end

  def create_product_B
    instance=ProductB.new
  end

  def create_product_C
    instance=ProductC.new
  end
end

class ProductA
  def do_your_stuff
    puts "I'm a ProductA, doing my stuff"
  end
end

class ProductB
  def do_it
    puts "I'm a ProductB, doing it"
  end
end

class ProductC
  def perform
    puts "I'm a ProductC, performing"
  end
end