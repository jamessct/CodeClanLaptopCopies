class Sales
  def initialize (pizzas)
    @pizzas = pizzas
  end

  def total_revenue
    total = 0
    @pizzas.each do |pizza|
      total += pizza.quantity * 10
    end
    total
  end
end