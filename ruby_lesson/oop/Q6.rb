class Monster

  attr_accessor :hp, :name

  @@monsters = []

  def self.all
    return @@monsters
  end

  def self.count
    return @@monsters.length
  end


  def initialize(name, hp, ap)
    @name = name
    @hp = hp
    @ap = ap 
    @alive = true

    puts "遇到怪獸 #{@name} 了!"
    puts "生命力(HP)：#{@hp}"
    puts "攻擊力(AP)：#{@ap}"
    puts ""

    @@monsters << self
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

    puts "！冠軍！攻擊#{Hero.count} 隻英雄加乘!"
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
puts ""
monster1 = Monster.new("Goblin", 100, 30)
monster2 = Monster.new("Troll", 100, 30)
monster3 = Monster.new("Gremlin", 100, 30)
puts ""

hero_team = Hero.all
monster_team = Monster.all


while hero_team.length > 0 && monster_team.length > 0
  for i in 0...hero_team.length
    r = rand(0...monster_team.length)
    hero_team[i].attack(monster_team[r])
    if !monster_team[r].is_alive?
      monster_team.delete_at(r)
    end
    break if monster_team.length == 0
  end
  for i in 0...monster_team.length
    r = rand(0...hero_team.length)
    monster_team[i].attack(hero_team[r])
    if !hero_team[r].is_alive?
      hero_team.delete_at(r)
    end    
  end
end