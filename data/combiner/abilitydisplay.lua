---------------------------------------------------------------------
-- File    : AbilityDisplay.lua
-- Desc    : 
-- Created : Thursday, August 2, 2001
-- Author  : 
-- 
-- (c) 2001 Relic Entertainment Inc.
-- 

-- ***List of the abilities the game will display in the Armybuilder/Combiner ***--


-------------------------------
-- Constant spelling
--part_creature 
--part_stock 
--part_front_legs
--part_back_legs 
--part_head 
--part_tail 
--part_torso 
--part_wings 
--part_pincers
--part_unknown 

---------------------------------------------------------------------
-- Table of all abilities the game should display in the 
-- Armybuilder/Combiner 


AbilitiesList = 
{
	HighEndurance =
	{
		gameattributename 	= "end_bonus",
		bodypart		= part_torso,
		name			= 6000,
		shortdesc		= 6001,
		showonlyincombiner	= 0,
	},
	SonarPulse =
	{
		gameattributename 	= "sonar_pulse",
		bodypart		= part_head,
		name			= 6010,
		shortdesc		= 6011,
		showonlyincombiner	= 0,
	},
	KeenSense =
	{
		gameattributename 	= "keen_sense",
		bodypart		= part_head,
		name			= 6015,
		shortdesc		= 6016,
		showonlyincombiner	= 0,
	},
	Regeneration =
	{
		gameattributename 	= "regeneration",
		bodypart		= part_creature,
		name			= 6020,
		shortdesc		= 6021,
		showonlyincombiner	= 0,
	},
	Herding =
	{
		gameattributename 	= "herding",
		bodypart		= part_creature,
		name			= 6025,
		shortdesc		= 6026,
		showonlyincombiner	= 0,
	},
	PackHunter =
	{
		gameattributename 	= "pack_hunter",
		bodypart		= part_creature,
		name			= 6030,
		shortdesc		= 6031,
		showonlyincombiner	= 0,
	},
	ElectricBurst =
	{
		gameattributename 	= "electric_burst",
		bodypart		= part_tail,
		name			= 6040,
		shortdesc		= 6041,
		showonlyincombiner	= 0,
	},
	StinkAttack =
	{
		gameattributename 	= "stink_attack",
		bodypart		= part_tail,
		name			= 6045,
		shortdesc		= 6046,
		showonlyincombiner	= 0,
	},
	Poison_touch =
	{
		gameattributename 	= "poison_touch",
		bodypart		= part_tail,
		name			= 6050,
		shortdesc		= 6051,
		showonlyincombiner	= 0,
	},
	Immunity = 
	{
		gameattributename 	= "is_immune",
		bodypart		= part_creature,
		name			= 6055,
		shortdesc		= 6056,
		showonlyincombiner	= 0,
	},
	Camouflage = 
	{
		gameattributename 	= "is_stealthy",
		bodypart		= part_tail,
		name			= 6060,
		shortdesc		= 6061,
		showonlyincombiner	= 0,
	},	
	Swimmer_tail = 
	{
		gameattributename 	= "is_swimmer",
		bodypart		= part_tail,
		name			= 6065,
		shortdesc		= 6066,
		showonlyincombiner	= 1,
	},	
	Swimmer_torso = 
	{
		gameattributename 	= "is_swimmer",
		bodypart		= part_torso,
		name			= 6065,
		shortdesc		= 6066,
		showonlyincombiner	= 1,
	},	
	Flyer = 
	{
		gameattributename 	= "is_flyer",
		bodypart		= part_wings,
		name			= 6070,
		shortdesc		= 6071,
		showonlyincombiner	= 1,
	},	
	Digging = 
	{
		gameattributename 	= "can_dig",
		bodypart		= part_front_legs,
		name			= 6075,
		shortdesc		= 6076,
		showonlyincombiner	= 0,
	},	
--	Nocturnal_Stealth = 
--	{
--		gameattributename 	= "night_is_stealthy",
--		bodypart		= part_creature,
--		name			= 6080,
--		shortdesc		= 6081,
--		showonlyincombiner	= 0,
--	},	
--	Nocturnal_Sight = 
--	{
--		gameattributename 	= "nocturnal_sight",
--		bodypart		= part_head,
--		name			= 6085,
--		shortdesc		= 6086,
--		showonlyincombiner	= 0,
--	},	
	Charge = 
	{
		gameattributename 	= "charge_attack",
		bodypart		= part_back_legs,
		name			= 6090,
		shortdesc		= 6091,
		showonlyincombiner	= 0,
	},	
	Leap_Attack = 
	{
		gameattributename 	= "leap_attack",
		bodypart		= part_back_legs,
		name			= 6100,
		shortdesc		= 6101,
		showonlyincombiner	= 0,
	},	
	Frenzy_Attack = 
	{
		gameattributename 	= "frenzy_attack",
		bodypart		= part_creature,
		name			= 6105,
		shortdesc		= 6106,
		showonlyincombiner	= 0,
	},
	Plague_Attack = 
	{
		gameattributename 	= "plague_attack",
		bodypart		= part_head,
		name			= 6110,
		shortdesc		= 6111,
		showonlyincombiner	= 0,
	},
	Quill_Attack =
	{
		gameattributename 	= "quill_burst",
		bodypart		= part_torso,
		name			= 6215,
		shortdesc		= 6216,
		showonlyincombiner	= 0,
	},
}

---------------------------------------------------------------------
-- Table of all damage modifying abilities the game should display 
-- in the Armybuilder/Combiner


DamageModifyingAbilitiesList = 
{
	Poison = 
	{
		dmgtype 		= DT_Poison,
		name			= 6200,
		shortdesc		= 6201,
	},
	Horns = 
	{
		dmgtype 		= DT_HornNegateArmour,
		name			= 6205,
		shortdesc		= 6206,
	},
	Barrier_Destruction =
	{
		dmgtype 		= DT_BarrierDestroy,
		name			= 6210,
		shortdesc		= 6211,
	},
}

