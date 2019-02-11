require "./lib/account.rb"

describe Account do
  a = Account.new
  it "Has a starter balance of 0" do
    expect(a.balance).to eq(0)
  end
end
