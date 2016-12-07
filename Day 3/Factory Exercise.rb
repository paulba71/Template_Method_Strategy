#
# ABSTRACT FACTORY EXERCISE
#

require_relative 'product_factory'

class Client

	def initialize
    @factory=ProductFactory.instance
    @second_factory=ProductFactory.instance
		@prod_A = @factory.create_product_A
  end

	def foo
		@prod_A.do_your_stuff
		my_prod_B = @factory.create_product_B
		my_prod_B.do_it
		@prod_C = @second_factory.create_product_C
		@prod_C.perform
	end
end



my_client = Client.new
my_client.foo
