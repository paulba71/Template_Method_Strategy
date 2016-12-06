require_relative 'Participant'

class SmartRandomParticipant < Participant

  def init_attempt(lower,upper)
    @num = Kernel.rand(lower..upper)
    @num_attempts+=1
    @upper=upper
    @lower=lower
    @result
  end

  def is_looping?
    ((result = @oracle.is_this_the_number?(@num)) != :correct) && (@num_attempts <= @max_num_attempts)
  end

  def do_move
    if @result == :less_than
      @upper = @num-1
    elsif @result == :greater_than
      @lower = @num+1
    end
    @num = Kernel.rand(@lower..@upper)
    @num_attempts+=1
  end
end