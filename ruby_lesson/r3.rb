def test(n)
  if n > 0 && n < 5
    return true
  else
    return false
  end
end
puts "#{test(4)}"
puts "#{test(6)}"

puts "我是分隔線"

def test2(x)
  if x > 6 || x < 3
    return true
  else
    return false
  end
end
puts "#{test2(8)}"
puts "#{test2(1)}"
puts "#{test2(4)}"
