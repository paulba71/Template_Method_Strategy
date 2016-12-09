
class Block
  def name
    'Block'
  end
  def cost
    10.00
  end
end

class Door
  def name
    'Door'
  end
  def cost
    12.50
  end
end

class Window
  def name
    'Window'
  end
  def cost
    17.50
  end
end

class Invoice
  def initialize
    @components = []
  end
  def add_block
    @components << Block.new
  end
  def add_window
    @components << Window.new
  end
  def add_door
    @components << Door.new
  end
  def to_s
    text = ''
    total_cost = 0.0
    @components.each do |component|
      total_cost += component.cost
      text += "#{component.name}: #{component.cost}\n"
    end
    text += "TOTAL: #{total_cost}"
  end
end

class InvoiceCreator
  attr_reader :invoice
  def initialize
    @invoice = Invoice.new
    @invoice.add_block
    @invoice.add_window
    @invoice.add_door   
  end
end

my_invoice_creator = InvoiceCreator.new
puts my_invoice_creator.invoice.to_s

