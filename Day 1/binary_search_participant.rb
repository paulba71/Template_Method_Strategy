require_relative "participant"

class BinarySearchParticipant < Participant


  # This is an example of the code that I refactored...

#  def play(lower, upper)
#    num = (lower+upper)/2
#    @num_attempts+=1
#    while ((result = @oracle.is_this_the_number?(num)) != :correct) && (@num_attempts <= @max_num_attempts) do
#      # puts "#{__method__}:I guessed #{num}"
#      if result == :less_than
#        upper = num-1
#      elsif result == :greater_than
#        lower = num+1
#      end
#      num=(lower+upper)/2
#      @num_attempts+=1
#    end
#    if (@num_attempts <= @max_num_attempts)
#      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
#      :success
#    else
#      fail
#    end
#  end

  def init_attempt(lower,upper)
    @lower=lower
    @upper=upper
    num = (lower+upper)/2
    @num_attempts+=1
    @result
  end

  def do_move
    if @result == :less_than
      upper = @num-1
    elsif @result == :greater_than
      lower = @num+1
    end
    @num=(@lower+@upper)/2
    @num_attempts+=1
  end

  def is_looping?
    (@result = @oracle.is_this_the_number?(@num)) != :correct && (@num_attempts <= @max_num_attempts)
  end

end