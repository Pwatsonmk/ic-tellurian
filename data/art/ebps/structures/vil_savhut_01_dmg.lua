-- Villager Hut - Damageable
-- inherit from lab(defstats23)

dofilepath("data:art/ebps/defstats23.lua")

ext = gameattributes;

ext.simvis_occluder = 1
ext.norotatesnap = 0
ext.visibleinfow = 1
ext.hasHealth = 1
ext.regen = 1

ext.hitpoints = 10000

ext.constructionticks = 550

ext.isBuildable = 1
ext.isRepairable = 1

-- end of file