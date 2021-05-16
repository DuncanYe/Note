class Hero

  attr_accessor :hp, :name

  @@heroes = []

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

  def self.count
    return @@heroes.length
  end

  def self.all
    return @@heroes
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

hero = Hero.new "Duncan1", 100, 30 
orc = Orc.new "Bone1", 100, 30

while hero.is_alive? && orc.is_alive?
  hero.attack(orc)
  if !orc.is_alive?
    break
  end
    orc.attack(hero)
end
