-- landing pad

-- inherit from building data
dofilepath("data:art/ebps/defbuilding.lua")

-- extend gameattributes table
ext = gameattributes;

-- healthextinfo
ext.hitpoints = 1000

-- costextinfo
ext.cost = 150
ext.costrenew = 50
ext.constructionticks = 240

ext.spawngatherer = 0
ext.spawnflyer = 1
ext.spawnground = 0
ext.spawnswimmer = 0
