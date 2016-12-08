require_relative 'person_behaviour'

require 'singleton'

class AdultBehaviour < PersonBehaviour

  include Singleton

  def vote
    puts "Vote accepted"
  end

  def apply_for_buspass
    puts "Pass granted"
  end

  def conscript
    puts "Here's your gun. Please point it away from yourself"
  end

  def book_retirement_home
    #Do nothing
  end

  def apply_for_medical_card
    puts "sorry no medical card for you. sign up to private health care"
  end

end