# Rubocop
class Account
  def initialize
    @balance = 0
  end

  attr_reader :balance

  def credit(earnings)
    @balance += earnings
  end

  def debit(spendings)
    spendings <= @balance ? @balance += -spendings : 'Your balance is too low!'
  end
end
