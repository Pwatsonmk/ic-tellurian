-- antiairtower

-- inherit from building data
dofilepath("data:art/ebps/defbuilding.lua")

-- extend gameattributes table
ext = gameattributes;

-- healthextinfo
ext.hitpoints = 1500

-- costextinfo
ext.cost = 150
ext.costrenew = 25
ext.constructionticks = 240

-- sightextinfo
sight_radius1 = 40
ext.keen_sense = 1

-- antiairtowerextinfo
ext.delayTicks = 8
ext.attackDmgType = 8+4092 -- electric + full armour piercing
ext.attackDmgPerTick = 40.0
ext.attackDuration = 1
ext.attackRadius = 25.0
ext.activateTime = 0.4
ext.damageRadius = 6.0
ext.upgradeDmgPerTickMult = 1.5
ext.upgradeDmgDurationMult = 1.0
ext.upgradeDmgRadiusMult = 1.3