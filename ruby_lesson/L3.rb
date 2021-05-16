def search_insert(nums, target)
    
    if target > nums.last
        return nums.length
    end
    
    for i in 0...nums.length do
        if nums[i] >= target
            return i
        end
    end   

end

puts "The number 6 is in The Array : #{search_insert([1, 3, 5, 8, 9], 6)}"
puts "Result is : #{search_insert([1, 3, 5, 8, 9], 5)}"
puts "Result is : #{search_insert([1, 3, 5, 8, 9], 0)}"
puts "Result is : #{search_insert([1, 3, 5, 8, 9], 10)}"
puts "Result is : #{search_insert([1, 3, 5, 8, 9], 15)}"


#如果i筆下一個數字大，就回傳當下的位置
#例外，如果target大於陣列裡的最後一個數字，就直接回傳陣列的最後一位置
#從頭掃到尾，這裏沒有要把target放進去，所以如果i大於等於target，就顯示當下i的位置
#比如 ([1, 3, 5, 8, 9], 6) 8是i，6大於5，再往下比6小於8，這時就直接回傳8的位子index[3]
#
#延伸題，如果要把target放進去怎麼做?