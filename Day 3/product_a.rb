class ProductA
end

class DeadlyProductA < ProductA
  def do_your_stuff
    puts "I am deadly ProductA, and I am flipping deadly"
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