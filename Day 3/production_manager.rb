require_relative 'cool_product_factory'
require_relative 'uncool_product_factory'
require_relative 'deadly_product_factory'


class ProductionManager
  puts "Creating the production manager, the boss"
  @@instance=ProductionManager.new
  @@mode=:idle
  @@factory=nil

  def self.instance
    return @@instance
  end

  def start(mode)

    case mode
      when :cool
        if(@@mode!=:cool)
          @@factory=CoolProductFactory.new
          @@mode=:cool
        end

      when :uncool
        if(@@mode!=:uncool)
          @@factory=UncoolProductFactory.new
          @@mode=:uncool
        end

      when :deadly
        if(@@mode!=:deadly)
          @@factory=DeadlyProductFactory.new
          @@mode=:deadly
        end
    end
  end

  def get_factory
    return @@factory
  end
end