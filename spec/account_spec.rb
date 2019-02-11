require './lib/account.rb'

describe Account do
  a = Account.new
  b = Account.new
  context 'Account creation' do
    it 'Has a starter balance of 0' do
      expect(a.balance).to eq(0)
    end
  end

  context 'Financial transactions' do
    it 'it can receive deposits' do
      a.credit(100)
      expect(a.balance).to eq(100)
    end

    it 'it can be debited' do
      a.debit(50)
      expect(a.balance).to eq(50)
    end

    it 'it cannot withdraw more money than is in the account balance' do
      expect(b.debit(150)).to eq('Your balance is too low!')
    end
  end

  context 'Transaction history' do
    c = Account.new
    c.credit(100)
    it 'it shows a history of transactions when adding money' do
      expect(c.history[0].credit).to eq(100)
    end

    it 'it shows a history of transactions when removing money' do
      c.debit(50)
      expect(c.history[1].debit).to eq(50)
    end
  end

  context 'Printing statements' do
    d = Account.new
    it 'responds to #print_statement' do
      expect(d).to respond_to(:print_statement)
    end
  end
end
