
def leetcode(word)
  leet = "leet"
  code = "code" 

  if word == "leet"
    return code
  elsif word == "code"
    return leet
  else
    return "bug"
  end

end

describe "leetcode" do

  it "leet 結果為 code" do
    result = leetcode("leet")
    expect(result).to eq("code")
  end

  it "code 結果為 leet" do
    result = leetcode("code")
    expect(result).to eq("leet")
  end

  it "other 結果為 bug" do
    result = leetcode("other")
    expect(result).to eq("bug")
  end

  it "nothing 結果為 bug" do
    result = leetcode("nothing")
    expect(result).to eq("bug")
  end

  it "coding 結果為 bug" do
    result = leetcode("coding")
    expect(result).to eq("bug")
  end

end