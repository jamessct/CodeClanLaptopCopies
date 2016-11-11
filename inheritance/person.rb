class Person
  attr_reader :health
  def initialize(name, last_name)
    @name = name
    @last_name = last_name
    @health = 100
  end

  def talk
    return "#{@name} #{@last_name}"
  end

end