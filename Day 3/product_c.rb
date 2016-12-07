class ProductC
  def perform
    puts "I'm a ProductC, performing"
  end
end

class CoolProductC < ProductC
  def perform
    puts "I'm a ProductC, performing so neatly you will want my autograph"
  end
end

class UncoolProductC < ProductC
  def perform
    puts "I'm a ProductC, so uncool I have given up"
  end
end