# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums) 
    zero_count = 0  
    for i in 0 ... nums.length do 
        if nums[i] == 0     
            zero_count +=1 
        end 
    end 
    nums.delete(0) 
    
    zero_count.times do 
        nums.push << 1 
    end
    return nums 
end

puts "Result is : #{move_zeroes([0,1,0,2,12])}"

# 此解法為直接刪除0，刪幾個補給個0。
#所以設定一個變數來裝0，(zero_count = 0)
#從頭搜到尾，如果數字是0，zero_count = 0就加一，
#掃出多少0，就刪除多少0，
#刪除多少0，就從最後面補上多少0
#回傳參數




