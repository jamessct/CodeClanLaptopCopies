require("minitest/autorun")
require_relative("./bank_account")

class TestBankAccount < MiniTest::Test
  def test_account_name
    bank_account = BankAccount.new("Jay", 500, "business")
    assert_equal("Jay", bank_account.holder_name())
    # account = {
    #   holder_name: "Jay",
    #   amount: 500,
    #   type: "business"
    # }

    # assert_equal("Jay", get_account_name(account) )
  end

  def test_account_amount
    bank_account = BankAccount.new("Jay", 500, "business")
    assert_equal(500, bank_account.amount())
  end

  def test_account_type
    bank_account = BankAccount.new("Jay", 500, "business")
    assert_equal("business", bank_account.type())
  end

  def test_can_set_holder_name
    bank_account = BankAccount.new("Jay", 500, "business")
    bank_account.holder_name = "Jaz"
    assert_equal("Jaz", bank_account.holder_name)
  end

  def test_pay_into_account
    bank_account = BankAccount.new("Jay", 500, "business")
    bank_account.pay_in(1000)
    assert_equal(1500, bank_account.amount())
  end

  def test_monthly_fee_business
    bank_account = BankAccount.new("Jay", 500, "business")
    bank_account.pay_monthly_fee()
    assert_equal(450, bank_account.amount())
  end

  def test_monthly_fee_personal
    bank_account = BankAccount.new("Jay", 500, "personal")
    bank_account.pay_monthly_fee()
    assert_equal(490, bank_account.amount())
  end
end

