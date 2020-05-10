-- blocker_2x2
-- extend gameattributes table

dofilepath("data:art/ebps/defstats23.lua")


ext = gameattributes;

ext.actbeselect = 0
ext.isvisible = 0
ext.simcollides = 1

ext.hasHealth = 0

ext.hitpoints = 1
ext.constructionticks = 1

-- simvis occlusion
ext.simvis_occluder = 0

-- sightextinfo
ext.owner_visible_only = 1

-- siteextinfo
ext.is_land = 1
ext.is_water = 1


-- end of file