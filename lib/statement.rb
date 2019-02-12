require_relative 'transaction'
# rubocop
class Statement
  def formatted(history)
    puts 'Date || Credit || Debit || Balance'
    history.reverse_each do |statement|
      puts "#{statement.date} || #{statement.credit == 0 ? '' : format('%.2f', statement.credit)} || #{ statement.debit == 0 ? '' : format('%.2f', statement.debit)} || #{format('%.2f', statement.balance)}"
    end
  end
end
