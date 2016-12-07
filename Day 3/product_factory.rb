require_relative 'product_a'
require_relative 'product_b'
require_relative 'product_c'

class ProductFactory


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
