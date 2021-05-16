

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

class DarkMage < Monster

  def initialize(name, hp , ap, mp)
    super(name, hp, ap)
    @mp = mp 
  end

  def attack(enemy)
    if @mp >= 3
      damage = fireball
      enemy.hp = enemy.hp - damage

      puts "#{@name} 噴射火球!"
      puts "#{enemy.name} 受到 #{damage} 點的傷害"
      puts "#{enemy.name} 剩下 #{enemy.hp} 點 HP"
      puts ""

      if enemy.hp < 1
        enemy.die
      end

    else
      super(enemy)
    end
  end

  def fireball
    @mp = @mp - 3
    return rand(@ap/2..@ap) + 50
  end
end

#=====================================

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

#=========================================

class Mage < Hero

  def initialize(name, hp , ap, mp)
    super(name, hp, ap)
    @mp = mp 
  end

  def attack(enemy)
    if @mp >= 3
      damage = fireball
      enemy.hp = enemy.hp - damage

      puts "#{@name} 噴射火球!"
      puts "#{enemy.name} 受到 #{damage} 點的傷害"
      puts "#{enemy.name} 剩下 #{enemy.hp} 點 HP"
      puts ""

      if enemy.hp < 1
        enemy.die
      end

    else
      super(enemy)
    end
  end

  def fireball
    @mp = @mp - 3
    return rand(@ap/2..@ap) + 50
  end
end

#========================

mage = Mage.new("Merlin", 100, 20, 6)
dark_mage = DarkMage.new("Morgana", 100, 30, 6)


while mage.is_alive? && dark_mage.is_alive?
  mage.attack(dark_mage)
  if !dark_mage.is_alive?
    break
  end
    dark_mage.attack(mage)
end
