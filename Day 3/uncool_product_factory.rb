require_relative 'product_a'
require_relative 'product_b'
require_relative 'product_c'
require_relative 'product_d'

class UncoolProductFactory
  puts "Creating the uncool, factory"
  @@instance=UncoolProductFactory.new

  def self.instance
    return @@instance
  end

  def create_product_A
    instance=UncoolProductA.new
  end

  def create_product_B
    instance=UncoolProductB.new
  end

  def create_product_C
    instance=UncoolProductC.new
  end

  def create_product_D
    instance=UncoolProductD.new
  end
end