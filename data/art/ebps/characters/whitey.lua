-- WHITEY

-- inherit from henchman data
dofilepath("data:art/ebps/defperson.lua")

-- extend his attributes
ext = gameattributes;

-- movingextinfo
ext.speed_max = 17

-- sightextinfo
ext.sight_radius1 = 70

-- healtextinfo
ext.hitpoints = 350

ext.popsize = 1

ext.minimap_enable = 0
ext.minimap_teamcolour = 0
ext.ghost_enable = 0