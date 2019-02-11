class Account

  def initialize()
    @balance = 0
  end

  def balance
    @balance
  end

  def deposit(earnings)
    @balance += earnings
  end

  def withdraw(spendings)
    @balance += -spendings
  end
end
