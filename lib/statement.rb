require_relative 'transaction'
# rubocop
class Statement
  def formatted(history)
    puts 'Date || Credit || Debit || Balance'
    history.reverse_each do |statement|
      puts "#{statement.date} || #{statement.credit.zero? ? '' : format('%.2f', statement.credit)} || #{statement.debit.zero? ? '' : format('%.2f', statement.debit)}|| #{format('%.2f', statement.balance)}"
    end
  end
end
