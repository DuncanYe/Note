describe "把整數反轉過來" do 

  it "123 變成 321" do
    result = reverse_integer 123
    expect(result).to be 321
  end

  it "-104 變成 -401" do
    result = reverse_integer -401
    expect(result).to be -104
  end

  it "214748305 變成 0" do
    result = reverse_integer 213123421212
    expect(result).to be 0
  end

end

  def reverse_integer(int)
    result = int.to_s.reverse!.to_i
    result *= -1 if int < 0 
    # 為什麼這樣寫負數就會跑到第二行，不是第一行？
    # 第4 5 行需要對調嗎
    return 0 if result > 2147483647 || result < -2147483647
    return result
  end