def pick(list)
  result = []
  list.each do |i|
    result << i if yield(i)
  end
  result
end

p pick([*1..10]) { |x| x % 2 == 0 }
p pick([*1..10]) { |x| x < 5 }
