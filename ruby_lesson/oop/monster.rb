class Monster

attr_accessor :hp, :name

@@monsters = []

MAX_HP = 100
MAX_AP = 30

  def initialize(name, hp, ap)
    @name = name
    @hp = hp
    @ap = ap 
    @alive = true

    if MAX_HP < hp
      @hp = MAX_HP
    else
      @hp = hp
    end

    if MAX_AP < ap
      @ap = MAX_AP
    else
      @ap = ap
    end

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

  def self.count
    return @@monsters.length
  end

  def self.all
    return @@monsters
  end

  def die
    @alive = false
    puts "#{@name}被打倒了！"
  end
end

qq = Monster.new(100, 400, 400)
