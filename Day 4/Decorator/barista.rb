
require_relative 'drink'
require_relative 'coffee'
require_relative 'milk'
require_relative "sugar"
require_relative 'syrup'
require_relative 'nip'

class Barista
  def produce_drink
    puts "starting to make your drink"
    # make base
    base=Drink.new
    # add coffee
    coffee=Coffee.new(base)
    coffee.add "Regular", 2, 1
    # and milk
    milk=Milk.new(coffee)
    milk.add "Skimmed", 1, 1
    milk.heat_milk
    # now sugar
    sugar=Sugar.new(milk)
    sugar.add "", 0, 0
    # What about an extra shot of coffee
    secondcoffee=Coffee.new(sugar)
    secondcoffee.add "Columbian blend", 1, 0.5
    #and syrup
    syrup=Syrup.new(secondcoffee)
    syrup.add "Vanilla", 1, 0.5
    # and a little nip
    nip=Nip.new(syrup)
    nip.add("Jameson",1,2.0)

    puts "Your drink is now ready"

    nip.declare

    puts "Water is #{base.type}"
    puts "Coffee is #{coffee.type}"
    puts "Second coffee is #{secondcoffee.type}"
    puts "Milk is #{milk.type}"
    puts "Sugar is #{sugar.type}"
    puts "Syrup is #{syrup.type}"
    puts "Nip is #{nip.type}"


  end
end

bar=Barista.new
bar.produce_drink