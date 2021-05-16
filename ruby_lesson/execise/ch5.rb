my_name = 'Duncan Ya'
my_age = 28 #It's yong, everything is possble
my_height = 75 #inches
my_weight = 180 #lbs
my_eyes = 'brawn'
my_teeth = 'White'
my_hair = 'black'


puts "Let's talk abot #{my_name}."
puts "He'S %d inches tall." % my_height
puts "He's %d pounds heavy." % my_weight
puts "Actually that's not too heavy."
puts "He's get %s eyes and %s hair." %[my_eyes, my_hair]
puts "His teeth are usually %s depending on the coffe." % my_teeth


# this line is tricky try to get exactly right.
puts "if I add %d, %d, and %d I get %d." % [my_age, my_height, my_weight, my_age + my_height + my_weight]
# 特別注意上面這行，有四個%d，如何顯示的。
# 字串裡有四個％d， 分別對照後面[]裡的變數，並且以 , (comma) 區隔開每一個要顯示的變數。


#學到了什麼？


# 什麼情況下用 %d 什麼情況下用 %s。 差別在哪裡？

# 單位容量換算
# 1lbs=453.59克(g) =（0.45359kg）
# 1英吋（feet）= 12英吋（inch）=30.5(cm)
# 1英吋（inch）= 2.54(cm)
