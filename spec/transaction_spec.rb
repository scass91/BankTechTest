require './lib/transaction.rb'

describe Transaction do
  a = Transaction.new(100, 0, 100)
  context 'Tracking activity' do
    it 'it can store deposits' do
      expect(a.credit).to eq(100)
    end
  end
end
