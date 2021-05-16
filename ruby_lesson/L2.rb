# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    if nums.length == 1
        return nums[0]
    end
    nums.sort!
        
    for i in 0...nums.length do
      if nums[i] != nums[i-1] && nums[i] != nums[i+1]
        return nums[i]
      end
    end
end

puts "The single number is : #{single_number [1, 2, 3, 6, 3, 2, 20, 1, 20 ]}"   # sort!後變成[1, 1, 2, 2, 3, 3, 6, 20, 20]

puts "The single number is : #{single_number [20, 2, 7, 8, 0]}"


#如果陣列裡只有一個數字，直接回傳index[0]
#sort照數字大小從新編排，
#驚嘆號能在陣列裡直接編排，沒驚嘆號是產生一個新的陣列編排數字。
#把每一個數字從頭掃到尾，如果i不等於i的上面一個數字(i-1)&&也不等於i的上面一個數字(i+1)
#回傳這個數字出來