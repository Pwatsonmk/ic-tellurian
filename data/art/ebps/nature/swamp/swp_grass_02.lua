-- Swp_Grass_02

-- inherit from defstats0 data
dofilepath("data:art/ebps/defstats0.lua")

-- extend gameattributes table
ext = gameattributes;

ext.simcollides = 0
ext.no_shadow = 0
ext.norotatesnap = 0
ext.simvis_occluder = 0


-- end of file