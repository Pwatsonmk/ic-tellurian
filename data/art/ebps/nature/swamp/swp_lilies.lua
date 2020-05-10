-- Swp_Lilies

-- inherit from defstats0 data
dofilepath("data:art/ebps/defstats0.lua")

-- extend gameattributes table
ext = gameattributes;

ext.simcollides = 0
ext.no_depth_write_hack = 1
ext.norotatesnap = 1
ext.simvis_occluder = 0


-- end of file