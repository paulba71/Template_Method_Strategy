class Auditor

  def initialize (num_of_runs)
    @guess_average_limit=3  # Hard coded limit for suspicious activity
    @attempts=[]
    @success_count=0
    @failure_count=0
    @total_num_attempts=0
    @num_of_runs=num_of_runs
  end

  def update (participant)
    if participant.result==:fail
      @failure_count+=1
    else
      @success_count+=1
      @attempts.push(participant.num_attempts)
    end
  end

  def get_average_guesses
    @total_num_attempts=0
    @attempts.each { |a| @total_num_attempts+=a }
    average=@total_num_attempts /(@num_of_runs-@failure_count)
    average
  end

  def report_out
    puts "Audit: #{@failure_count} fails"
    puts "Audit: #{@success_count} successes"
    print "Audit: Successful runs: "
    @attempts.each do |item|
      print "#{item}, "
    end
    puts ""
    average_guesses=get_average_guesses
    if average_guesses < @guess_average_limit
      puts "WARNING! SUSPICIOUS ACTIVITY Took on average #{@total_num_attempts/(NUM_OF_RUNS-@failure_count)} attempts to succeed"
    else
      puts "Took on average #{@total_num_attempts/(NUM_OF_RUNS-@failure_count)} attempts to succeed"
    end
  end

end