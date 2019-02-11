require './lib/statement.rb'

describe Statement do
  s = Statement.new(100, 0, 100)
  context "Formatting of a bank statement" do
    it "returns a bank statment with a list of debits, credits & a balance" do
      expect(s.formatted).to eq("|| 100 || || 100")
    end
  end
end
