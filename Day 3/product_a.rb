class ProductA
  def do_your_stuff
    puts "I'm a ProductA, doing my stuff"
  end
end

class CoolProductA < ProductA
  def do_your_stuff
    puts "I'm a Cool ProductA, doing my stuff with schtyle"
  end
end

class UncoolProductA < ProductA
  def do_your_stuff
    puts "I'm a uncool ProductA, doing my stuff without fuss or glamour"
  end
end