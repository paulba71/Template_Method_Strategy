require_relative 'product_a'
require_relative 'product_b'
require_relative 'product_c'

class DeadlyProductFactory
  puts "Creating the deadly, factory"
  @@instance=DeadlyProductFactory.new

  def self.instance
    return @@instance
  end

  def create_product_A
    instance=DeadlyProductA.new
  end

  def create_product_B
    instance=DeadlyProductB.new
  end

  def create_product_C
    instance=DeadlyProductC.new
  end
end