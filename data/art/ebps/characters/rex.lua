-- Rex

-- inherit from henchman data
dofilepath("data:art/ebps/defperson.lua")

ext = gameattributes;

-- movingextinfo
ext.speed_max = 25
ext.is_swimmer = 1
ext.waterspeed_max = 12

-- sightextinfo
ext.sight_radius1 = 30

-- healthextinfo
ext.hitpoints = 1000

ext.carryamount = 40

-- taggerextinfo
ext.reloadStart = 1.0
ext.reloadCost = 1.0
ext.dartDamage = 250.0

-- rexextinfo
ext.creatureInfluenceRadius = 20.0
ext.regenPerTick = .5

-- Set up the Tag info for tag abilities

-- Gathering Animals
ext.tagtype0 		= 2
ext.tagproximity0 	= 1.00
ext.tagdotime0 		= 2.5
ext.tagcooltime0 	= 1.125
ext.tagreloadpercentpersec0 = 0.33

-- Neurotoxin attack Animals
ext.tagtype1 		= 4
ext.tagproximity1 	= 1.00
ext.tagdotime1 		= 2.5
ext.tagcooltime1 	= 1.125
ext.tagreloadpercentpersec1 = 0.1

-- attackextinfo
ext.pack_hunter = 0
ext.herding = 0
ext.charge_attack = 0
ext.leap_attack = 0

-- uiextinfo
ext.minimap_enable = 1
ext.minimap_teamcolour = 1
ext.ghost_enable = 0

-- baseline optimization
ext.min_triangle_count=750