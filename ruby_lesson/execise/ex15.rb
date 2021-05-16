filename = ARGV.first 

prompt = "> "              #給prompt定義
txt = File.open(filename)  #給txt定義

puts "Here's your file: #{filename}"
puts txt.read()

puts "Type the filename again: "  #再輸入一次文件名稱， 
print prompt                      #放上符號>提示從這裡輸入 prompt = "> " 
file_again = STDIN.gets.chomp()   #取得使用者輸入的資訊

txt_again = File.open(file_again) # 

puts txt_again.read()