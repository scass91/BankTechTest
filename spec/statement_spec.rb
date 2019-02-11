require './lib/statement.rb'

describe Statement do
  s = Statement.new
  let(:transaction) do
    double(:transaction, credit: 1000, debit: 0, balance: 1000)
  end

  context 'Formatting of a bank statement' do
    it 'returns a bank statment with a list of debits, credits & a balance' do
      expect { s.formatted([transaction]) }.to output("Credit || Debit || Balance\n1000 || 0 || 1000\n").to_stdout
    end
  end
end
