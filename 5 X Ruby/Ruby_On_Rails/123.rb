# def say_hello(name)
#   puts "Hi, #{name}"
#   yield
#   puts "Hi end"
# end

# say_hello('kk') do 
#   puts "yo yo yo "
# end

# def my_map(list)
#   result = []

#   list.each do |i|
#     result << yield(i)
#    end
#    return result
# end

# p my_map([1, 2, 3, 4, 5]) { |x| x * 2 }


# 練習：請印出從 1 到 100 之間所有的單數。
# [*1..100].map { |i| p i if i % 2 != 0 }
# [*1..100].map do |i|
#   p i if i % 2 != 0
# end

# 練習：請印出從 1 到 100 之間所有的單數的總和。
 # 把單數的拿出來放到一個array
 # 在加總

# 練習：改良版土砲 times 方法
# 5.my_times { |i| puts i }                 # 印出數字 0 ~ 4

# 練習：土砲 select 方法
# [1, 2, 3, 4, 5].my_select { |i| i.odd? }  # 只印出單數 1, 3, 5






















