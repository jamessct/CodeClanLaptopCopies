class Calculator

  def initialize (num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def add
    @num1 + @num2
  end

  def subtract
    @num1 - @num2
  end

  def multiply
    @num1 * @num2
  end

  def divide
    @num1.to_f / @num2
  end

  def to_the_power_of
    @num1 ** @num2
  end
end