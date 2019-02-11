require_relative 'transaction'
# rubocop
class Statement
  def initialize(credit, debit, balance)
    @credit = credit
    @balance = balance
    @debit = debit
  end

  def formatted
    "|| #{@credit.zero? ? '' : @credit} || #{@debit.zero? ? '' : @debit}|| #{@balance}"
  end
end
