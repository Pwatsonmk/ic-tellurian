-- antiairtower

-- inherit from building data
dofilepath("data:art/ebps/defbuilding.lua")

-- extend gameattributes table
ext = gameattributes;

-- healthextinfo
ext.hitpoints = 1000

-- costextinfo
ext.cost = 150
ext.costrenew = 25
ext.constructionticks = 240

-- sightextinfo
sight_radius1 = 40
ext.keen_sense = 1

-- towerburstextinfo
ext.burstRechargeTicks	= 400
ext.burstRadius			= 20.0
ext.burstDamage			= 250.0
ext.burstDmgAirMult		= 1.0
ext.burstDmgGroundMult	= 0.0
ext.burstCostRenew		= 1000
ext.burstCostGather		= 0

-- antiairtowerextinfo
ext.delayTicks = 8
ext.attackDmgType = 8+4092 -- electric + full armour piercing
ext.attackDmgPerTick = 20.0
ext.attackDuration = 1
ext.attackRadius = 25.0
ext.activateTime = 0.4
ext.damageRadius = 6.0
ext.upgradeDmgPerTickMult = 1.75
ext.upgradeDmgDurationMult = 1.0
ext.upgradeDmgRadiusMult = 1.3

-- infestationextinfo
ext.dmg_infestation_multiplier = 0.6

-- end of file