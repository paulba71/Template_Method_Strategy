class ProductB
  def do_it
    puts "I'm a ProductB, doing it"
  end
end

class CoolProductB < ProductB
  def do_it
    puts "I'm a ProductB, doing it with ease, I love myself I am so cool"
  end
end

class UncoolProductB < ProductB
  def do_it
    puts "I'm a ProductB, doing it and making a lot of noice about it too"
  end
end