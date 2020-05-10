-- julius_lab : lab(defstats5)

-- inherit from lab(defstats5)
dofilepath("data:art/ebps/defstats5.lua")

ext = gameattributes;
ext.visibleInFow = 1

-- healthextinfo
ext.hitpoints = 15000
ext.fadeAndDeleteWhenDead = 0
ext.stayInPathfindingAfterDead = 1
-- end of file
