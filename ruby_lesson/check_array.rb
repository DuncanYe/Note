# 可以用這方式做出 Hash Tag，把新的資料抓出來，做出新的Hash Tag
def check_array(a)
  data = [0,1,2,3,4,5]
  answer = []
  a.map do |i|
    unless data.include?(i)
      answer << i
    end
  end
  puts "#{answer}"
end

check_array([1,3,0,5,6,7])
check_array([1,3,0,])