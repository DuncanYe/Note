# Q3:
# 神聖武士在危機時會自動使用聖光治療自己

# （本題目是接著教材範例之後，每個題目都是獨立分開的）

# 在 HolyKnight class 新增一個 method，名為 heal，也就是治療。
# heal 會把 HolyKnight 的 hp 增加 50 點：hp = hp + 50
# 修改 HolyKnight class 裡面 attack method 的程式碼，讓 HolyKnight 在攻擊之前，先判斷自己的 hp 是否少過 20。也就是說：if hp < 20
# 。如果是，holy_knight 不會 attack，而會為自己補血，也就是呼叫 heal method
# 。如果不是，holy_knight 會照常 attack
# 創建一個 HolyKnight 和 一個 Orc 來戰鬥，請用這段程式碼去呼叫 HolyKnight 與 Orc
# 。holy_knight = HolyKnight.new("Richard", 100, 30)
# 。orc = Orc.new("Bigfoot", 100, 30)
# 讓 holy_knight 和 orc 戰鬥

class Hero

  attr_accessor :hp, :name

  # @@heroes = []

  def initialize(name, hp, ap)
    @name = name
    @hp = hp
    @ap = ap
    @alive = true

    puts "你的英雄 #{@name}強勢登場！！"
    puts "生命力(HP) : #{@hp}"
    puts "攻擊力(AP) : #{@ap}"
    puts ""
  end

  def is_alive?
    return @alive
  end

  def attack(enemy)
    damage = rand(@ap/2..@ap)
    enemy.hp = enemy.hp - damage

    puts "#{@name} 普通攻擊!"
    puts "#{enemy.name} 受到 #{damage} 點傷害"
    puts "#{enemy.name} 剩下 #{enemy.hp} 點 HP"
    puts ""

    if enemy.hp < 1
      enemy.die
    end
  end

    def die
      @alive = false
      puts "#{@name}被打倒了！"
    end
end

    
   
class HolyKnight < Hero

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

#======================================

class Monster

  attr_accessor :hp, :name

  def initialize(name, hp, ap)
    @name = name
    @hp = hp
    @ap = ap 
    @alive = true

    puts "遇到怪獸 #{@name} 了!"
    puts "生命力(HP)：#{@hp}"
    puts "攻擊力(AP)：#{@ap}"
    puts ""
  end

  def is_alive?
    return @alive
  end

  def attack(enemy)
    damage = rand (@ap..@ap*5) 
    enemy.hp = enemy.hp - damage

    puts "#{@name} 攻擊!"
    puts "#{enemy.name} 受到 #{damage} 點傷害"
    puts "#{enemy.name} 剩下 #{enemy.hp} 點 HP"
    puts ""

    if enemy.hp < 1
      enemy.die
    end
  end

  def die
    @alive = false
    puts "#{@name}被打倒了！"
  end
end

#==================================

class Orc < Monster

  def attack(enemy)
    damage = rand(@ap..@ap*2)
    enemy.hp = enemy.hp - damage

    puts "#{@name} 重量攻擊！"
    puts "#{enemy.name} 受到 #{damage}點傷害" 
    puts "#{enemy.name} 剩下 #{enemy.hp} 點 HP"
    puts ""

    if enemy.hp < 1
      enemy.die
    end
  end
end

#=============================


holy_knight = HolyKnight.new("Richard", 100, 30)
orc = Orc.new("Bigfoot", 100, 30)

while holy_knight.is_alive? && orc.is_alive?
  holy_knight.attack(orc)
  if !orc.is_alive?
    break
  end
    orc.attack(holy_knight)
end






