require_relative('bird')

class Duck < Bird

  def initialize(num_legs)
    super(num_legs)
  end
  
  def fly
    bird_flying = super()
    return "duck #{ bird_flying }"
  end
end