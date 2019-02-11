require_relative 'transaction'
# RubocopWeve
class Account
  NEWACCBALANCE = 0

  def initialize
    @balance = NEWACCBALANCE
    @history = []
  end

  attr_accessor :balance, :history

  def credit(earnings)
    @balance += earnings
    @history.push(Transaction.new(earnings, 0, @balance))
  end

  def debit(spendings)
    @history.push(Transaction.new(0, spendings, @balance - spendings))
    spendings <= @balance ? @balance += -spendings : 'Your balance is too low!'
  end
end
