# require_relative "fizzbuzz.rb"
# 為什麼這裡要加 relative
def fizzbuzz(int)
  if int % 3 == 0 && int % 5 == 0
    return "FizzBuzz"
  end

  if int % 5 == 0
    return "Buzz"
  end

  if int % 3 == 0
    return "Fizz"
  end

  return int
end


RSpec.describe "FizzBuzz" do

  it "3 應該是 Fizz" do
    result = fizzbuzz(3)
    expect(result).to eq('Fizz')    # 傳入 3，預期結果為 Fizz
  end

  it "5 應該是 Buzz" do
    result = fizzbuzz(5)
    expect(result).to eq('Buzz')     # 傳入 5，預期結果為 Buzz
  end

  it "15 應該是 FizzBuzz" do
    result = fizzbuzz(15)
    expect(result).to eq('FizzBuzz') # 傳入 15，預期結果為 FizzBuzz
  end

  it "1 應該是 1" do
    result = fizzbuzz(1)
    expect(result).to eq(1)          # 傳入 1，預期結果為 1
  end

end
