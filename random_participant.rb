require_relative "participant"

class RandomParticipant < Participant

  @lower
  @upper

  def init_attempt(lower,upper)
    @lower=lower
    @upper=upper
    num = Kernel.rand(lower..upper)
    @num_attempts+=1
  end

  def is_looping?
    @oracle.is_this_the_number?(@num)!=:correct && (@num_attempts <= @max_num_attempts)
  end

  def do_move
    @num = Kernel.rand(@lower..@upper)
    @num_attempts+=1
  end
end