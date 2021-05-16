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
    damage = rand (@ap/2..@ap)
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

#=======================================
class Hero

  attr_accessor :hp, :name

  @@heroes = []

  def self.all
    return @@heroes
  end

  def self.count
    return @@heroes.length
  end


  def initialize(name, hp, ap)
    @name = name
    @hp = hp
    @ap = ap
    @alive = true

    puts "你的英雄 #{@name}強勢登場！！"
    puts "生命力(HP) : #{@hp}"
    puts "攻擊力(AP) : #{@ap}"
    puts ""

    @@heroes << self
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

  # def self.count
  #   return @@heroes.length
  # end

  # def self.all
  #   return @@heroes
  # end
end

#=========================================


class Champion < Hero

  # 隨著英雄的數量增加冠軍的攻擊力，攻擊力是英雄的數量*50

  # def hero_count
  #   hero_count = 0
  #   if   #想想如何知道出現的角色有幾隻英雄？
  #     i == hero
  #     hero_count += 1
  #   end
  # end 


  def attack(enemy)
    damage = Hero.count * 50 
    enemy.hp = enemy.hp - damage

    puts "#{Hero.count} 隻英雄加乘攻擊!"
    puts "#{enemy.name} 受到 #{damage} 點傷害"
    puts "#{enemy.name} 剩下 #{enemy.hp} 點 HP"
    puts ""

    if enemy.hp < 1
      enemy.die
    end
  end

end
#=========================================

champion = Champion.new("Peter", 100, 30)
hero1 = Hero.new("Roger", 100, 30)
hero2 = Hero.new("Ben", 100, 30)
monster = Monster.new("Bigfoot", 100, 30)


# def fight(champion, dark)
  while champion.is_alive? && monster.is_alive?
  champion.attack(monster)
    if !monster.is_alive?
      break
    end
    monster.attack(champion)
  end
# end

# fight(champion, monster)