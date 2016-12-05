
require_relative 'oracle.rb'

# Tries to guess the 'secret' number using several different strategies
class Participant
  attr_reader :num_attempts 

  def initialize(oracle, max_num_attempts:10)
    @oracle, @max_num_attempts = oracle, max_num_attempts
    @num_attempts = 0
  end
  
  def reset
    @num_attempts = 0
  end

  private
  def fail
    # puts "Boo hoo. I made #{@num_attempts} attempts and failed."
    :fail
  end

end