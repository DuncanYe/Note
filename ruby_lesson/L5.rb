def Remove_Duplicates(nums)

   nums.sort!
        
    for i in 0...nums.length do
      if nums[i] != nums[i-1] && nums[i] != nums[i+1]
        return nums[i]
      end
    end
end


puts "Result is #{Remove_Duplicates([ 1, 2, 2, 2, 5, 7, 7, 7, 10 ]) "