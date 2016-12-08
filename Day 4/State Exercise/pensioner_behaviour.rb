require_relative 'person_behaviour'

require 'singleton'

class PensionerBehaviour < PersonBehaviour

  include Singleton

  def vote
    puts "Vote accepted"
  end

  def apply_for_buspass
    puts "Pass granted and it's free"
  end

  def conscript
    puts "Too old to be conscripted. Please donate funds instead..."
  end

  def book_retirement_home
    puts "Got a nice place to stay where I can watch Countdown"
  end

  def apply_for_medical_card
    puts "medical card awarded"
  end

end