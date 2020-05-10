-- Ganglion's lab

-- inherit from lab data
dofilepath("data:art/ebps/defstats5.lua")

-- extend gameattributes table
ext = gameattributes;

-- healthextinfo
ext.hitpoints = 12500
ext.fadeAndDeleteWhenDead = 0
ext.stayInPathfindingAfterDead = 1
-- end of file
