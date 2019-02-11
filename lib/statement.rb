require_relative 'transaction'
# rubocop
class Statement
  def formatted(history)
    puts 'Credit || Debit || Balance'
    history.reverse_each do |statement|
      puts "#{statement.credit} || #{statement.debit} || #{statement.balance}"
    end
  end
end
