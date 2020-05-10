-- lightning rod 6

-- inherit from building data
dofilepath("data:art/ebps/defbuilding.lua")

ext = gameattributes;

-- costextinfo
ext.cost = 150
ext.constructionticks = 240

-- resrenewextinfo
ext.degrade = 1
	
	-- how much elec does each rod give player
	ext.resgrowth0 = 2
	ext.resgrowth1 = 4
	ext.resgrowth2 = 6
	ext.resgrowth3 = 8
	
	-- !!! rod limit has been move to prerequisites.lua !!!

	-- after four rods how much does each give a player
	ext.resPerRodAfterCap = 0.5

-- healthextinfo
ext.hitpoints = 500

-- siteextinfo
ext.orientation = 1

ext.stayInPathfindingAfterDead = 0
