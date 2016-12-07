require_relative 'product_a'
require_relative 'product_b'
require_relative 'product_c'

class CoolProductFactory
  puts "Creating the cool, factory"
  @@instance=CoolProductFactory.new

  def self.instance
    return @@instance
  end

  def create_product_A
    instance=CoolProductA.new
  end

  def create_product_B
    instance=CoolProductB.new
  end

  def create_product_C
    instance=CoolProductC.new
  end

end