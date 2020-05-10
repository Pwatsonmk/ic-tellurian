-- foundry

-- inherit from building data
dofilepath("data:art/ebps/defbuilding.lua")

-- extend gameattributes table
ext = gameattributes;

-- healthextinfo
ext.hitpoints = 1500

-- costextinfo
ext.cost = 250
ext.costrenew = 0
ext.constructionticks = 240

-- siteextinfo
ext.orientation = 2

ext.stayInPathfindingAfterDead = 0
