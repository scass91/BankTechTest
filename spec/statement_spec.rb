require './lib/statement.rb'

describe Statement do
  s = Statement.new
  let(:trans) do
    double(:trans, date: '02/03/1991', credit: 1000, debit: 0, balance: 1000)
  end

  let(:newtrans) do
    double(:newtrans, date: '12/02/2019', credit: 1000, debit: 0, balance: 2000)
  end

  context 'Formatting of a bank statement' do
    it 'returns a bank statment with a list of dates & transactions' do
      expect { s.formatted([trans]) }.to output("Date || Credit || Debit \
|| Balance\n02/03/1991 || 1000.00 || || 1000.00\n").to_stdout
    end

    it 'returns history of multiple transactions' do
      expect { s.formatted([trans, newtrans]) }.to output("Date || Credit ||\
 Debit || Balance\n12/02/2019 || 1000.00 || || 2000.00\n02/03/1991 \
|| 1000.00 || || 1000.00\n").to_stdout
    end
  end
end
