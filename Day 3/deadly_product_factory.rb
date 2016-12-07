require_relative 'product_a'
require_relative 'product_b'
require_relative 'product_c'
require_relative 'product_d'

class DeadlyProductFactory
  #@@instance=DeadlyProductFactory.new

  #def self.instance
  #  return @@instance
  #end

  def initialize
    puts "Creating deadly factory"
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

  def create_product_D
    instance=DeadlyProductD.new
  end
end