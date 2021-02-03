-- gyrocopter

-- inherit from person data
dofilepath("data:art/ebps/defperson.lua")

-- extend gameattributes table
ext = gameattributes;

-- healthextinfo
ext.hitpoints = 2500



-- henchman attack ext info
ext.Melee0_damage = 100
ext.Melee0_contact = 0.5
ext.Melee0_rate = 2.0
ext.Melee0_dmgtype = 4
ext.Melee0_number = 1


ext.sight_radius1 = 40

-- costextinfo
ext.cost = 100
ext.costrenew = 50
ext.constructionticks = 80

-- movingextinfo
ext.is_land = 0
ext.is_flyer = 1
ext.speed_max = 0
ext.airspeed_max = 35
ext.waterspeed_max = 0
--ext.entity_move_ap = 4.0

-- gatherextinfo
ext.loadticks = 15
ext.unloadticks = 15
ext.carryamount = 50
ext.gatherinterruptable = 0
ext.gatherrestricted = 0

-- tag ext info
ext.reloadStart = 1.0
ext.reloadCost = 1.0
ext.dartDamage = 0

-- Tag Vision Ability
ext.tagtype0 		= 1
ext.tagproximity0 	= 1.0
ext.tagdotime0 		= 2.5
ext.tagcooltime0 	= 1.125
ext.tagreloadpercentpersec0 = 0.1

-- building animation
ext.buildAnimLeadInTicks = 12
ext.buildAnimLeadOutTicks = 10

-- siteextinfo
ext.is_land = 1
ext.is_water = 0
ext.is_shoreline = 0
ext.visibleInFow = 0
ext.orientation = 0
ext.attachTo = 0
ext.snapSurface = 0
ext.snapHeightMap = 1
ext.showSiteDecal = 0

-- uiextinfo
ext.minimap_enable = 1
ext.minimap_teamcolour = 1
ext.ghost_enable = 0

-- populationextinfo
ext.popsize = 1

-- occluded rendering
ext.simvis_occludee = 0

-- shadow
ext.boneblobshadow = 0

