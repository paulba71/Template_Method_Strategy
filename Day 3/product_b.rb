class ProductB
end

class DeadlyProductB < ProductB
  def do_it
    puts "I am deadly ProductB, and I am flipping deadly"
  end
end

class CoolProductB < ProductB
  def do_it
    puts "I'm a cool ProductB, doing it with ease, I love myself I am so cool"
  end
end

class UncoolProductB < ProductB
  def do_it
    puts "I'm a uncool ProductB, doing it and making a lot of noice about it too"
  end
end