class Account

  def initialize()
    @balance = 0
  end

  def balance
    @balance
  end

  def deposit(amount)
    @balance = @balance + amount
  end

end
