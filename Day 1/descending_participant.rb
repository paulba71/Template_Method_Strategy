require_relative 'participant'

class DescendingParticipant < Participant

  def init_attempt(lower,upper)
    @num=upper
    @num_attempts+=1
  end

  def is_looping?
    @oracle.is_this_the_number?(@num)!=:correct && (@num_attempts <= @max_num_attempts)
  end

  def do_move
    @num-=1
    @num_attempts+=1
  end
end