
def move_zeroes(nums) 
  nums = [0, 1, 0, 3, 12]
    zero_count = 0  
    for i in 0 ... nums.length do 
        if nums[i] == 0 
            zero_count +=1 
        end 
    end 
    nums.delete(0) 
    
    zero_count.times do 
        nums.push(0) 
    end 
    return nums
end

puts "Result is : #{move_zeroes([0,1,0,2,12])}"


