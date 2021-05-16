number = rand(0..9) 
puts "請在0~9之中輸入一個數字" 
puts number
guess = gets.chomp.to_i

if guess==number 
else 
  while (guess!=number) 
    puts "猜錯囉！請在0~9之中輸入一個數字" 
    guess = gets.chomp.to_i 
  end 
end
puts "猜對囉！"


# ===========

number = rand(0..9)

puts number
puts "Please Guess the Number between 0 to 9"

guess = gets.chomp.to_i

  if number == guess
    puts "You got it"
  else
    while (number !=guess)
      puts "Please enter the other number"
      guess = gets.chomp.to_i
      if number == guess
        puts "You got it"
      end
    end
  end


# =================================
# 以下是我自己寫的2018/2/17，小白工作坊日期為2017/10/5，
# 覺得工作坊安排的時間無法輔助進度前進
number = rand(0..10)

puts "(#{number}) 為測試答案，請輸入0-10其中一個數字"
guess = gets.chomp.to_i

while (guess != number)
  guess = gets.chomp.to_i
  if guess == number
  else
    puts "try again"
  end
end
puts "Right"

# ==========================

number = rand(0..10)

puts "(#{number}) 為測試答案，請輸入0-10其中一個數字"
guess = gets.chomp.to_i

while (guess != number)
  guess = gets.chomp.to_i
  if guess != number
    puts "try again"
  else
    puts "Right"
  end
end



