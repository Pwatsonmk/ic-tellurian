-- M6 Gyrocopter - special gyro used only for mission 6
-- inherit from lab(defstats23)

dofilepath("data:art/ebps/defstats23.lua")

ext = gameattributes;

ext.simvis_occluder = 1
ext.norotatesnap = 0
ext.visibleinfow = 1
ext.hasHealth = 1
ext.hitpoints = 750

ext.isBuildable = 1
ext.isRepairable = 1

ext.cost = 150
ext.constructionticks = 240

-- end of file