-- the trees that get smashed in mission1's first nislet

-- inherit from defstats23 data
dofilepath("data:art/ebps/defstats23.lua")

-- extend gameattributes table
ext = gameattributes;

ext.simcollides = 1
ext.no_shadow = 1
ext.norotatesnap = 1

ext.hitpoints = 1.0
ext.constructionticks = 1.0

-- uiextinfo (minimap,ghosting,etc)
ext.ghost_enable = 0
ext.minimap_enable = 1

-- end of file