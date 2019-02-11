# Rubocop
class Account
  def initialize
    @balance = 0
  end

  attr_reader :balance

  def deposit(earnings)
    @balance += earnings
  end

  def withdraw(spendings)
    @balance += -spendings
  end
end
