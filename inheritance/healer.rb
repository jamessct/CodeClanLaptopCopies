require_relative('person')

class Healer < Person
  def initialize(name, last_name, health)
    super(name)
    super(last_name)
    super(health)
  end

  def heal(health)
    @health += 10
  end
end