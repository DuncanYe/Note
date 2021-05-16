require "./monster"



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