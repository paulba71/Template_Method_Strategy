#
# ABSTRACT FACTORY EXERCISE
#

require_relative 'product_factory'
require_relative 'cool_product_factory'
require_relative 'uncool_product_factory'
require_relative 'deadly_product_factory'

class Client

	def initialize (mode)
    if(mode == :cool)
      @factory=CoolProductFactory.instance
    end

    if(mode == :uncool)
      @factory=UncoolProductFactory.instance
    end

    if(mode == :deadly)
      @factory=DeadlyProductFactory.instance
    end


		@prod_A = @factory.create_product_A
  end

	def foo
		@prod_A.do_your_stuff
		my_prod_B = @factory.create_product_B
		my_prod_B.do_it
		prod_C = @factory.create_product_C
		prod_C.perform
    prod_D = @factory.create_product_D
    prod_D.make_it_so
	end
end



my_client = Client.new(:cool)
my_client.foo
my_client = Client.new(:uncool)
my_client.foo
my_client = Client.new(:deadly)
my_client.foo