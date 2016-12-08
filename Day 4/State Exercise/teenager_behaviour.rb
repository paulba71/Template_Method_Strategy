require_relative 'person_behaviour'

require 'singleton'

class TeenagerBehaviour < PersonBehaviour
  include Singleton

  def vote
    puts "Too young to vote"
  end

  def apply_for_buspass
    puts "Got buspass due to also getting conscripted - lucky you"
  end

  def conscript
    puts "Welcome to the army young person."
  end

  def book_retirement_home
    # Do nothing
  end

  def apply_for_medical_card
    puts "sorry it's a tough world, medical card denied. maybe your army pension will compensate"
  end
end