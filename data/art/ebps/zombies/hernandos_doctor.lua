-- henchmen

-- inherit from building data
dofilepath("data:art/ebps/defperson.lua")

-- extend attributes
ext = gameattributes;

-- 
ext.popsize = 1
ext.sight_radius1 = 35

-- movingextinfo
ext.is_swimmer = 0
ext.waterspeed_max = 0

-- tag ext info
ext.reloadStart = 1.0
ext.reloadCost = 1.0
ext.dartdamage = 0

-- henchman ext info
ext.lucyBonus_moveSpeedMult   = 1.5
ext.lucyBonus_repairSpeedMult = 1.5
ext.lucyBonus_buildSpeedMult  = 1.5
--ext.firstIdleReportDelay      = 10.0
--ext.repeatIdleReportDelay     = 120.0

-- henchman attack ext info
ext.Melee0_damage = 100
ext.Melee0_contact = 0.5
ext.Melee0_rate = 2.0
ext.Melee0_dmgtype = 4
ext.Melee0_number = 1

ext.hitpoints = 500
ext.speed_max = 25
ext.size = 1

-- Tag Vision Ability
ext.tagtype0 		= 1
ext.tagproximity0 	= 1.0
ext.tagdotime0 		= 2.5
ext.tagcooltime0 	= 1.125
ext.tagreloadpercentpersec0 = 0.1

-- building animation
ext.buildAnimLeadInTicks = 0
ext.buildAnimLeadOutTicks = 0

-- gatherextinfo
ext.loadticks = 48
ext.unloadticks = 8
ext.carryamount = 500

-- uiextinfo (minimap,ghosting,etc)
ext.ghost_enable = 0
ext.minimap_enable = 1
ext.minimap_teamcolour = 1
