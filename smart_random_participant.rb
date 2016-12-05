require_relative 'Participant'

class SmartRandomParticipant < Participant
  def play (lower,upper)
    num = Kernel.rand(lower..upper)
    @num_attempts+=1
    while ((result = @oracle.is_this_the_number?(num)) != :correct) && (@num_attempts <= @max_num_attempts) do
      # puts "#{__method__}: I guessed #{num}"
      if result == :less_than
        upper = num-1
      elsif result == :greater_than
        lower = num+1
      end
      num = Kernel.rand(lower..upper)
      @num_attempts+=1
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      :success
    else
      fail
    end
  end
end