class ProductC
end

class DeadlyProductC < ProductC
  def perform
    puts "I am deadly ProductC, and I am flipping deadly"
  end
end

class CoolProductC < ProductC
  def perform
    puts "I'm a cool ProductC, performing so neatly you will want my autograph"
  end
end

class UncoolProductC < ProductC
  def perform
    puts "I'm a uncool ProductC, so uncool I have given up"
  end
end