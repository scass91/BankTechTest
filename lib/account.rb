require_relative 'transaction'
require_relative 'statement'

# Rubocop
class Account
  attr_accessor :balance, :history
  NEWACCBALANCE = 0

  def initialize(statement = Statement.new)
    @balance = NEWACCBALANCE
    @history = []
    @statement = statement
  end

  def credit(earnings)
    @balance += earnings
    @history.push(Transaction.new(earnings, 0, @balance))
  end

  def debit(spendings)
    @history.push(Transaction.new(0, spendings, @balance - spendings))
    spendings <= @balance ? @balance += -spendings : 'Your balance is too low!'
  end

  def print_statement
    @statement.formatted(@history)
  end
end
