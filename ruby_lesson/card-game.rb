puts "Please input player1's name"
player1 = gets.chomp

player1_point =rand(1..13)
puts "#{player1} point is #{player1_point}"
puts "----------"

puts "Please input player2's name"
player2 = gets.chomp

player2_point = rand(1..13)
puts "#{player2} point is #{player2_point}"


if player1_point > player2_point 
  puts  player1 + " win"
elsif player1_point < player2_point
  puts  player2 + " win"
else
  puts  "tie"
end


