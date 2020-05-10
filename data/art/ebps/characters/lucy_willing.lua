-- Lucy Willing

-- inherit from henchman data
dofilepath("data:art/ebps/defperson.lua")

ext = gameattributes;

ext.speed_max = 17
ext.is_swimmer = 1
ext.waterspeed_max = 12
ext.sight_radius1 = 30
ext.hitpoints = 800

-- lucy ext info

ext.repairSpeedMult = 5.0
ext.constSpeedMult = 1.5

ext.henchmanInfluenceRadius = 10.0

-- tagger ext info
ext.reloadStart = 1.0
ext.reloadCost = 1.0
ext.dartDamage = 0

-- Set up the Tag info for gathering tech tag ability
ext.tagtype0 		= 3.0
ext.tagproximity0 	= 0.5
ext.tagdotime0 		= 2.5
ext.tagcooltime0 	= 1.125
ext.tagreloadpercentpersec0 = 0.1

-- Set up the Tag info for sabotage tag ability
ext.tagtype1 		= 5.0
ext.tagproximity1 	= 0.0
ext.tagdotime1 		= 2.5
ext.tagcooltime1 	= 1.125
ext.tagreloadpercentpersec1 = 0.1

-- gatherextinfo
ext.loadticks = 32
ext.unloadticks = 8
ext.carryamount = 30

-- uiextinfo
ext.minimap_enable = 1
ext.minimap_teamcolour = 1
ext.ghost_enable = 0

ext.fadeAndDeleteWhenDead = 0

-- baseline optimization
ext.min_triangle_count=900

