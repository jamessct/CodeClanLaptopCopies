# require('pry-byebug')
class BankAccount

  attr_reader( :type, :holder_name, :amount )
  # attr_writer( :holder_name )
  attr_accessor( :holder_name )

  def initialize(input_name, input_value, input_type)
    @holder_name = input_name
    @amount = input_value
    @type = input_type
  end

  def pay_in(amount_to_increase)
    @amount += amount_to_increase
  end

  def pay_monthly_fee()
    if @type == "business" 
      @amount -= 50
    elsif @type == "personal"
      @amount -= 10
    end
  end



  # def holder_name()
  #   return @holder_name
  # end

  # def amount()
  #   return @amount
  # end

  # def type()
  #   return @type
  # end

  # def set_holder_name(new_holder_name)
  #   @holder_name = new_holder_name
  # end
end

# binding.pry

