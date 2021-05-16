require "./hero"

class Champion < Hero

  # 隨著英雄的數量增加冠軍的攻擊力，攻擊力是英雄的數量*50

  # def hero_count
  #   hero_count = 0
  #   if   #想想如何知道出現的角色有幾隻英雄？
  #     i == hero
  #     hero_count += 1
  #   end
  # end 
   
  puts"我是Champion"

   
  def attack(enemy)
    damage = Hero.count * 50 
    enemy.hp = enemy.hp - damage

    puts "！冠軍！攻擊#{Hero.count} 隻英雄加乘!"
    puts "#{enemy.name} 受到 #{damage} 點傷害"
    puts "#{enemy.name} 剩下 #{enemy.hp} 點 HP"
    puts ""

    if enemy.hp < 1
      enemy.die
    end
  end

end