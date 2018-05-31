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

def fizzbuzz(int)
  string = ""
  string += "Fizz" if int % 3 == 0
  string += "Buzz" if int % 5 == 0
  return string if string != ""
  return int
end
# 看得懂判斷，看不懂空字串