class Bank
  attr_reader :balance 

  def initialize(amount)
    @balance = amount
  end
  
  def deposit(amount)
    if amount > 0
      @balance += amount
    end
  end

  def withdraw(amount)
    if amount > 0 && amount <= balance
      @balance -= amount
    end
  end

  
end



RSpec.describe Bank do
  let(:bank) { Bank.new(10) }

  it "存錢" do
    # bank = Bank.new(10)
    bank.deposit 10
    expect(bank.balance).to be 20
  end

  it "存負的錢無效" do
    # bank = Bank.new(10)
    bank.deposit -5
    expect(bank.balance).to be 10
  end

  it "領錢" do
    # bank = Bank.new(10)
    bank.withdraw 10
    expect(bank.balance).to be 0
  end

  it "不能領負的錢" do
   # bank = Bank.new(10)
   bank.withdraw -10
   expect(bank.balance).to be 10
  end

  it "沒錢不能領" do
   # bank = Bank.new(10)
   bank.withdraw 20
   expect(bank.balance).to be 10
  end
 
end