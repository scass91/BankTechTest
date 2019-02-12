require_relative 'transaction'
# rubocop
class Statement
  def headers
    puts 'Date || Credit || Debit || Balance'
  end

  def formatted(history)
    headers
    history.reverse_each do |statement|
      puts "#{statement.date} || #{statement.credit.zero? ? '' : format('%.2f', statement.credit)} || #{statement.debit.zero? ? '' : format('%.2f', statement.debit)}|| #{format('%.2f', statement.balance)}"
    end
  end
end
