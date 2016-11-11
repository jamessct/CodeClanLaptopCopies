class SelfAssessment
  def initialize(username, income, outgoings, assets, tax_calculator)
    @income = income
    @outgoings = outgoings
    @assets = assets
    @username = username
    @tax_calculator = tax_calculator
  end

  def profit
    @income - @outgoings
  end

  def tax_due
    @tax_calculator.calculate(profit(), @assets)
  end

  def report_tax
    "Hello #{@username} you owe us #{tax_due}"
  end
end

class IncomeTaxCalculator
  def calculate(profits, assets)
    return profits * 0.2
  end
end

class AssetTaxCalculator
  def calculate(profits, assets)
    return assets * 0.4
  end
end

class CombinationTaxCalculator
  def calculate(profits, assets)
    return profits * 0.1 + assets * 0.2
  end
end

class HavenTaxCalculator
  def calculate(profits, assets)
    return 0
  end
end

income_calculator = IncomeTaxCalculator.new()
haven_calculator = HavenTaxCalculator.new()


assessment = SelfAssessment.new("Jay", 1000, 100, 2000, haven_calculator)

puts assessment.report_tax()
