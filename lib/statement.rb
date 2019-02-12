require_relative 'transaction'
# rubocop
class Statement
  def headers
    'Date || Credit || Debit || Balance' + "\n"
  end

  def formatted(history)
    views = '' << headers
    history.reverse_each do |statement|
      views << "#{statement.date} ||\
 #{statement.credit.zero? ? '' : format('%.2f', statement.credit)} ||\
 #{statement.debit.zero? ? '' : format('%.2f', statement.debit)}||\
 #{format('%.2f', statement.balance)}\n"
    end
    puts views
  end
end
