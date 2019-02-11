# Rubocop
class Account
  def initialize
    @balance = 0
    @history = []
  end

  attr_accessor :balance, :history

  def credit(earnings)
    @balance += earnings
    @history.clear.push(earnings, 0, @balance)
  end

  def debit(spendings)
    @history.clear.push(0, spendings, @balance - spendings)
    spendings <= @balance ? @balance += -spendings : 'Your balance is too low!'
  end
end
