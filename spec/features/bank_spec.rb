require 'account'

describe 'Bank accounts' do
  it 'functions' do
    a = Account.new
    a.credit(10_000)
    a.debit(5000)
    expect(a.balance).to eq(5000.00)
  end
end
