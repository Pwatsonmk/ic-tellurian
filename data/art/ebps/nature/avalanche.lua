-- AVALANCHE

-- inherit from defstats0 data
dofilepath("data:art/ebps/defstats0.lua")

-- extend gameattributes table
ext = gameattributes;

ext.simcollides = 0
ext.no_shadow = 1

-- site extension
ext.visibleInFow = 1
ext.norotatesnap = 1


-- end of file