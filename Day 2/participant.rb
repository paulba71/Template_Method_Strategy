require 'observer'

require_relative 'oracle.rb'

# Tries to guess the 'secret' number using several different strategies
class Participant

  include Observable

  attr_reader :num_attempts, :result

  def initialize(oracle, max_num_attempts:10)
    @oracle, @max_num_attempts = oracle, max_num_attempts
    @num_attempts = 0
    @num=0
    @result=:fail
  end
  
  def reset
    @num_attempts = 0
  end

  def play(lower,upper)
    init_attempt(lower,upper)
    ## puts"num_attempts: #{@num_attempts}"
    while is_looping? do
      # puts "#{__method__}:I guessed #{num}"
      do_move
      ## puts"num_attempts: #{@num_attempts}"
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      register_result(:success)
      :success
    else
      fail
    end
  end

  # This is the state change that the observer will observe
  def register_result(result)
    @result=result
    changed
    notify_observers(self)
  end

  private
  def fail
    # puts "Boo hoo. I made #{@num_attempts} attempts and failed."
    register_result(:fail)
    :fail
  end

end