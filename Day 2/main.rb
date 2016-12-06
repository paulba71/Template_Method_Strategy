
# Evaluate the performance of participants using different guessing strategies

require_relative 'auditor'
require_relative 'oracle.rb'
require_relative 'participant.rb'
require_relative 'random_participant'
require_relative 'linear_participant'
require_relative 'smart_random_participant'
require_relative 'binary_search_participant'
require_relative 'descending_participant'
require_relative 'cheating_participant'
NUM_OF_RUNS = 8

oracle = Oracle.new

def run_game(strategy)
  oracle = Oracle.new
  # evaluate random strategy
  total_num_attempts = 0
  total_num_failures = 0
  puts "Playing strategy #{strategy}"
  case strategy
    when :play_random
      player = RandomParticipant.new(oracle, max_num_attempts: NUM_OF_RUNS*2)
    when :play_linear
      player = LinearParticipant.new(oracle, max_num_attempts:NUM_OF_RUNS*2)
    when :play_smart_random
      player = SmartRandomParticipant.new(oracle, max_num_attempts:NUM_OF_RUNS*5)
    when :play_binary_search
      player = BinarySearchParticipant.new(oracle, max_num_attempts:NUM_OF_RUNS*5)
    when :play_descending
      player = DescendingParticipant.new(oracle, max_num_attempts:NUM_OF_RUNS*2)
    when :play_cheater
      player = CheatingParticipant.new(oracle, max_num_attempts:NUM_OF_RUNS*5)
  end
  auditor=Auditor.new(NUM_OF_RUNS)
  player.add_observer(auditor)
  1.upto(NUM_OF_RUNS) do |i|
    oracle.secret_number = i
    player.reset
    if player.play(1,NUM_OF_RUNS)==:success
      # puts "play #(strategy) found #{i} in #{player.num_attempts} attempts"
      total_num_attempts += player.num_attempts
    else
      # puts "play #{strategy} failed to find #{i} after #{player.num_attempts} attempts"
      total_num_failures += 1
    end
  end
  auditor.report_out
end

run_game(:play_random)
run_game(:play_linear)
run_game(:play_binary_search)
run_game(:play_smart_random)
run_game(:play_descending)
run_game(:play_cheater)

