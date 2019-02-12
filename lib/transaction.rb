# rubocop
class Transaction
  attr_accessor :credit, :debit, :balance, :date

  def initialize(credit, debit, balance)
    @date = Time.now.strftime('%d/%m/%Y')
    @credit = credit
    @balance = balance
    @debit = debit
  end
end
