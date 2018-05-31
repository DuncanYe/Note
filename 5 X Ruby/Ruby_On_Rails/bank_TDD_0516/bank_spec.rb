require "./bank.rb"
class Bank

  def initialize(amount)
    @balance = amount
  end

  def deposit(amount)
    if amount > 0
       @balance +=  amount
    end
  end

  attr_reader :balance
  # def balance
  #   @balance
  # end

  def withdraw(amount)
    if amount > 0 && enough?(amount)
      if amount <= balance
        # 這裡的balance 是方法，方法裡面可以用方法，也可以直接拿d@balance來用
        @balance -= amount 
      end
    end
  end

  private

  def enough?(amount)
    amount <= @balance
  end

end

RSpec.describe Bank do

  let(:b) { Bank.new(10) }
  # 上下兩行是一樣的
  def bank
    @bank ||= Bank.new(10)
  end

  describe "存錢" do
    # 用descipbe/context，把同樣功能的寶起來，方便閱讀。對效能無影響
    it "存錢功能" do
      # b = Bank.new(10)
      b.deposit 20
      expect(b.balance).to be 30
    end

    it "存負的錢無效" do
      # b = Bank.new(10)
      b.deposit(-20)
      expect(b.balance).to be 10
    end
  end

  context "領錢" do
    # 用context/descipbe，把同樣功能的寶起來，方便閱讀。對效能無影響
    it "領錢功能" do
      # b = Bank.new(10)
      b.withdraw(10)
      expect(b.balance).to be 0
    end

    it "不能領負的錢" do
      # b = Bank.new(10)
      b.withdraw(-10)
      expect(b.balance).to be 10
    end

    it "不能領超過戶頭的錢" do
      # b = Bank.new(10)
      b.withdraw(20)
      expect(b.balance).to be 10
    end
  end

end

