require './lib/statement.rb'

describe Statement do
  s = Statement.new
  let(:transaction) do
    double(:transaction, date: '02/03/1991', credit: 1000, debit: 0, balance: 1000)
  end

  let(:newtransaction) do
    double(:newtransaction, date: '12/02/2019', credit: 1000, debit: 0, balance: 2000)
  end

  context 'Formatting of a bank statement' do
    it 'returns a bank statment with a list of dates, debits, credits & a balance' do
      expect { s.formatted([transaction]) }.to output("Date || Credit || Debit \
|| Balance\n02/03/1991 || 1000.00 || 0.00 || 1000.00\n").to_stdout
    end

    it 'returns history of multiple transactions' do
      expect { s.formatted([transaction, newtransaction]) }.to output("Date || Credit || Debit ||\
 Balance\n12/02/2019 || 1000.00 || 0.00 || 2000.00\n02/03/1991 \
|| 1000.00 || 0.00 || 1000.00\n").to_stdout
    end
  end
end
