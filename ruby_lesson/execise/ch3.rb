puts "I will now count my chickens"    #接下來要數我有幾隻雞

puts "hens", 25 + 30 / 6               #hens 有30隻雞 結果自動顯示在下一行
puts "Roosters", 100 - 25 * 3 % 4      #Roosters 有97隻雞 結果自動顯示在下一行

puts "Now I will count the eggs:"      #接下來要算我有幾顆蛋

puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6 # 7顆

puts "Is it ture that 3 + 2 < 5 -7?"  # 3 + 2 < -7是真的嗎？ 答案為false

puts 3 + 2 < 5 - 7                     #ruby運算後會顯示false

puts "What is 3 + 2?", 3 + 2           #顯示5
puts "What is 5 - 7?", 5 - 7           #顯示-2


"Oh, that's why it's false."

puts "How about some more."

puts "Is it greater?", 5 > -2          #顯示 ture
puts "Is it greater or equal?", 5 >= -2  #顯示 ture
puts "Is it less or equal?", 5 <= -2   #顯示 false


#後記，算數不需要string""的符號
puts 3 + 3 > 6 / 2                    #會判斷 ture or flase
puts 3 + 3                            #會直接顯示數字
