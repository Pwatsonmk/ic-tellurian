-- lab 5

-- inherit from building data
dofilepath("data:art/ebps/defbuilding.lua")

-- extend gameattributes table
ext = gameattributes;

-- spawnerextinfo
ext.spawnswimmer = 0
ext.spawnground = 0
ext.spawnflyer = 0
ext.spawngatherer = 1

-- storagerenewextinfo
ext.renewstorage = 500

-- healthextinfo
ext.hitpoints = 8000

-- costextinfo
ext.cost = 1000
ext.constructionticks = 550

-- resrenewextinfo
ext.resgrowth = 0.5

-- sightextinfo
ext.sight_radius1 = 40

-- siteextinfo
ext.showSiteDecal = 0

-- radarpulseextinfo
ext.radarPulse_durationTicks = 80
ext.radarPulse_rechargeTicks = 960
ext.radarPulse_costRenew = 1000
ext.radarPulse_costGather = 0

ext.stayInPathfindingAfterDead = 0