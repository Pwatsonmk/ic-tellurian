-- artic villager

-- inherit from henchman data
dofilepath("data:art/ebps/defperson.lua")

ext = gameattributes;

ext.speed_max = 15
ext.sight_radius1 = 20
ext.hitpoints = 75

-- uiextinfo (minimap,ghosting,etc)
ext.ghost_enable = 0
ext.minimap_enable = 1
ext.minimap_teamcolour = 1

-- baseline optimization
ext.min_triangle_count=458 

-- Object Info
ext.front_foot_type = 1
ext.rear_foot_type = 1
