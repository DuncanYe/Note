require "./hero"
require "./holyknight"
require "./champion"
require "./mage"


require "./darkmage"
require "./monster"



# ========================================

def fight(bright, dark)

  while bright.is_alive? && dark.is_alive?
    bright.attack(dark)
    if !dark.is_alive?
      break
    end
    dark.attack(bright)
  end

end
team = Hero.all
# holyknight = HolyKnight.new "Duncan", 1111, 30
# mage = Mage.new "Dunacn", 100, 30, 10
# champoin = Champion.new "Duncan", 100, 30


# darkmage = DarkMage.new "Bone1", 100, 30, 4
# monster_team = Monster.all 


# fight(holyknight, darkmage)

# 現在team = Hero.all 叫出兩隻hero ，是哪兩隻？
#為何叫不出團隊怪獸圖隊