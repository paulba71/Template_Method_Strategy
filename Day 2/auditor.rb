class Auditor

  def initialize
    @attempts=[]
    @success_count=0
    @failure_count=0
  end

  def update (participant)
    if participant.result==:fail
      @failure_count+=1
    else
      @success_count+=1
      @attempts.push(participant.num_attempts)
    end
  end

  def report_out
    puts "Audit: #{@failure_count} fails"
    puts "Audit: #{@success_count} successes"
    print "Audit: Successful runs: "
    @attempts.each do |item|
      print "#{item}, "
    end
    puts ""
  end

end