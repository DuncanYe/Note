require "./hero"

MAX_HP = 100
MAX_AP = 30

class HolyKnight < Hero

  puts"我是HolyKnight"

  def attack(enemy)

    if hp < 70
      heal    # why? 我一開始想法是damage = heal ，我認為再把攻擊的步驟轉乘heal
      puts "#{@name}#{@hp}低於70，休息一下，補個血～"
      puts ""
    
      else
      damage = rand(@ap..@ap*2)
      enemy.hp = enemy.hp - damage

      puts "#{@name} 發出聖光!"
      puts "#{enemy.name} 受到 #{damage} 點的傷害"
      puts "#{enemy.name} 剩下 #{enemy.hp} 點 HP"
      puts ""

      if enemy.hp < 1                                 
         enemy.die                                     
      end
    end
  end 

   def heal
    @hp = @hp + 50
   end

end


holyknight = HolyKnight.new("Robinhood", 100, 20 )

