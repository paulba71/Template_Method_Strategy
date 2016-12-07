require_relative 'product_a'
require_relative 'product_b'
require_relative 'product_c'
require_relative 'product_d'


class CoolProductFactory
  #@@instance=CoolProductFactory.new

  #def self.instance
  #  return @@instance
  #end

  def initialize
    puts "creating cool factory"
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

  def create_product_D
    instance=CoolProductD.new
  end

end