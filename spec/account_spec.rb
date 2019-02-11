require "./lib/account.rb"

describe Account do
  a = Account.new
  it "Has a starter balance of 0" do
    expect(a.balance).to eq(0)
  end

  it "it can receive deposits" do
    a.deposit(100)
    expect(a.balance).to eq(100)
  end

  it "it can be debited" do
    a.withdraw(50)
    expect(a.balance).to eq(50)
  end
end
