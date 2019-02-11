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
    spendings <= @balance ? @balance += -spendings : "Your balance is too low!"
  end
end
