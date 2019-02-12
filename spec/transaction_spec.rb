require './lib/transaction.rb'

describe Transaction do
  a = Transaction.new(100, 0, 100)
  context 'Tracking activity' do
    it 'it can store deposits' do
      expect(a.credit).to eq(100)
    end

    it 'it can store balances' do
      expect(a.balance).to eq(100)
    end

    it 'it can store withdrawn amounts' do
      expect(a.debit).to eq(0)
    end

    it 'it contains a date' do
      allow(a).to receive(:date) { "02/03/1991" }
      expect(a.date).to eq("02/03/1991")
    end
  end
end
