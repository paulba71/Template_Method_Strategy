class ProductD
end

class DeadlyProductD < ProductD
  def make_it_so
    puts "I am deadly ProductD, and I am flipping deadly"
  end
end

class CoolProductD < ProductD
  def make_it_so
    puts "I'm a cool ProductD, performing so neatly you will want my autograph"
  end
end

class UncoolProductD < ProductD
  def make_it_so
    puts "I'm a uncool ProductD, so uncool I have given up"
  end
end