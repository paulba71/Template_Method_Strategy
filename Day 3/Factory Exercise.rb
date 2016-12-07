#
# ABSTRACT FACTORY EXERCISE
#

require_relative 'product_factory'
require_relative 'cool_product_factory'
require_relative 'uncool_product_factory'
require_relative 'deadly_product_factory'
require_relative 'production_manager'

class Client

  def initialize (mode)
    @manager=ProductionManager.instance
    @manager.start(mode)
  end


  def choose_production (mode)
    @manager.start(mode)
  end

  def new_foo
    # Product the stuff for the appropryare product family...
    @factory=@manager.get_factory
    prod_A = @factory.create_product_A
    prod_A.do_your_stuff
    prod_B = @factory.create_product_B
    prod_B.do_it
    prod_C = @factory.create_product_C
    prod_C.perform
    prod_D = @factory.create_product_D
    prod_D.make_it_so
  end
end



my_client=Client.new(:cool)
my_client.new_foo
my_client.choose_production(:cool) # Should re-use and not recreate
my_client.new_foo
my_client.choose_production(:uncool)  # Factory change so should re create
my_client.new_foo
my_client=Client.new(:cool)
my_client.new_foo
my_client=Client.new(:deadly)
my_client.new_foo
my_client=Client.new(:cool)
my_client.new_foo

