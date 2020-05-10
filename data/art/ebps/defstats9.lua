-- aviary

-- inherit from building data
dofilepath("data:art/ebps/defbuilding.lua")

-- extend gameattributes table
ext = gameattributes;

-- spawnerextinfo
ext.spawnswimmer = 0
ext.spawnground = 0
ext.spawnflyer = 1
ext.spawngatherer = 0

-- healthextinfo
ext.hitpoints = 2000

-- costextinfo
ext.cost = 300
ext.costrenew = 100
ext.constructionticks = 132

-- siteextinfo
ext.orientation = 1


