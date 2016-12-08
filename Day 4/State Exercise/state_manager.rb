require_relative 'child_behaviour'
require_relative 'adult_behavior'
require_relative 'pensioner_behaviour'
require_relative 'teenager_behaviour'

require 'singleton'

class StateManager

  include Singleton


  def get_state (age)
    if age < 13
      state=ChildBehaviour.instance
    end

    if age.between?(13,17)
      state=TeenagerBehaviour.instance
    end

    if age.between?(18,64)
      state=AdultBehaviour.instance
    end

    if age >=65
      state=PensionerBehaviour.instance
    end
    state
  end

end