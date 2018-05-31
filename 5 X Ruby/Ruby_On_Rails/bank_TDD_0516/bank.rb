class Bank

  def initialize(amount)
  # ??
    @balance = amount
  end

  def deposit(amount)
    if amount > 0
       @balance +=  amount
    end
  end

  attr_reader :balance
  # ??
  # def balance
  #   @balance
  # end

  def withdraw(amount)
    if amount > 0 && enough?(amount)
      if amount <= @balance
        @balance -= amount 
      end
    end
  end

  private

  def enough?(amount)
    amount <= @balance
  end

end