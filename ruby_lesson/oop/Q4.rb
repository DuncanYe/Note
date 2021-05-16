

class Hero

  attr_accessor :hp, :name

  @@heroes = []

  def initialize(name, hp, ap, sp)
    @name = name
    @hp = hp
    @ap = ap
    @sp = sp
    @alive = true

    puts "你的英雄 #{@name}強勢登場！！"
    puts "生命力(HP) : #{@hp}"
    puts "攻擊力(AP) : #{@ap}"
    puts "體力(SP)   : #{@sp}"
    puts ""

  end

  def is_alive?
    return @alive
  end
  
  def use_stamina
      @sp = @sp - 1
    end

  def attack(enemy)
    
    if @sp > 0 
      use_stamina
    damage = rand(@ap/2..@ap)
    enemy.hp = enemy.hp - damage

    puts "#{@name} 普通攻擊! AP 剩下#{@sp}"
    puts "#{enemy.name} 受到 #{damage} 點傷害"
    puts "#{enemy.name} 剩下 #{enemy.hp} 點 HP"
    puts ""
   

    if enemy.hp < 1
      enemy.die
    end
    else
      @sp = @sp + 1
      puts "#{@name} 回復體力，跳過一回合，補了:#{@sp}SP"
      puts ""
    end
  end

    def die
      @alive = false
      puts "#{@name}被打倒了！"
    end
    
    
end

#======================================

class Monster

  attr_accessor :hp, :name

  def initialize(name, hp, ap, sp)
    @name = name
    @hp = hp
    @ap = ap 
    @sp = sp
    @alive = true

    puts "遇到怪獸 #{@name} 了!"
    puts "生命力(HP)：#{@hp}"
    puts "攻擊力(AP)：#{@ap}"
    puts "體力(SP)  ： #{@sp}"
    puts ""
  end

  def is_alive?
    return @alive
  end
  
  def use_stamina
    @sp = @sp - 1
  end

  def attack(enemy)
    
    if @sp > 0
       use_stamina
      damage = rand (@ap/2..@ap)
      enemy.hp = enemy.hp - damage

      puts "#{@name} 攻擊! AP 剩下#{@sp}"
      puts "#{enemy.name} 受到 #{damage} 點傷害"
      puts "#{enemy.name} 剩下 #{enemy.hp} 點 HP"
      puts ""

      if enemy.hp < 1
        enemy.die
      end
    else
      @sp = @sp + 1
      puts "#{@name} 回復體力，跳過一回合，補了:#{@sp}SP"
      puts ""
    end
  end
  

  def die
    @alive = false
    puts "#{@name}被打倒了！"
  end
  
end

#==================================
def fight(bright, dark)
  while bright.is_alive? && dark.is_alive?
  bright.attack(dark)
    if !dark.is_alive?
      break
    end
    dark.attack(bright)
  end
end


hero = Hero.new "Tim", 100, 30, 3
monster = Monster.new "Bigfoot", 100, 30, 2

fight(hero, monster)

