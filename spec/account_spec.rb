require './lib/account.rb'

describe Account do
  a = Account.new
  it 'Has a starter balance of 0' do
    expect(a.balance).to eq(0)
  end

  it 'it can receive deposits' do
    a.credit(100)
    expect(a.balance).to eq(100)
  end

  it 'it can be debited' do
    a.debit(50)
    expect(a.balance).to eq(50)
  end

  it 'it cannot withdraw more money than is in the account balance' do
    expect(a.debit(150)).to eq('Your balance is too low!')
  end
end
