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
	-- bodypart is required for compatibility sakes.
	-- Updated abilities body part toggle (such as stink which we want on either the tail or torso depending on the animal)
	-- will be read from the creatures lua file instead of this file.
	AutoDefense = 
	{
		gameattributename 	= "AutoDefense",
		bodypart		= part_tail,
		name			= 37493,
		shortdesc		= 37494,
		showonlyincombiner	= 0,
	},
	Loner = 
	{
		gameattributename 	= "loner",
		bodypart		= part_tail,
		name			= 37491,
		shortdesc		= 37492,
		showonlyincombiner	= 0,
	},
	DeflectionArmour = 
	{
		gameattributename 	= "deflection_armour",
		bodypart		= part_torso,
		name			= 37500,
		shortdesc		= 37501,
		showonlyincombiner	= 0,
	},	
	Assassinate = 
	{
		gameattributename 	= "assassinate",
		bodypart		= part_tail,
		name			= 37498,
		shortdesc		= 37499,
		showonlyincombiner	= 0,
	},
	HeadFlashShow = 
	{
		gameattributename 	= "headflashdisplay",
		bodypart		= part_head,
		name			= 37502,
		shortdesc		= 37503,
		showonlyincombiner	= 0,
	},
	TailFlashShow = 
	{
		gameattributename 	= "tailflashdisplay",
		bodypart		= part_tail,
		name			= 37502,
		shortdesc		= 37503,
		showonlyincombiner	= 0,
	},
	Oversized = 
	{
		gameattributename 	= "big",
		bodypart		= part_creature,
		name			= 58005,
		shortdesc		= 58006,
		showonlyincombiner	= 1,
	},
	Infestation = 
	{
		gameattributename 	= "infestation",
		bodypart		= part_head,
		name			= 37504,
		shortdesc		= 37505,
		showonlyincombiner	= 0,
	},
	Colony = 
	{
		gameattributename 	= "poplow",
		bodypart		= part_head,
		name			= 37530,
		shortdesc		= 37531,
		showonlyincombiner	= 0,
	},
	ColonyTorso = 
	{
		gameattributename 	= "poplowtorso",
		bodypart		= part_torso,
		name			= 37533,
		shortdesc		= 37531,
		showonlyincombiner	= 0,
	},
	Jumping = 
	{
		gameattributename 	= "can_SRF",
		bodypart		= part_torso,
		name			= 37508,
		shortdesc		= 37509,
		showonlyincombiner	= 0,
	},
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
		name			= 37516,
		shortdesc		= 37517,
		showonlyincombiner	= 0,
	},
	PoisonTouch =
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
	Digging = 
	{
		gameattributename 	= "can_dig",
		bodypart		= part_front_legs,
		name			= 37489,
		shortdesc		= 37490,
		showonlyincombiner	= 0,
	},
	Charge = 
	{
		gameattributename 	= "charge_attack",
		bodypart		= part_back_legs,
		name			= 6090,
		shortdesc		= 6091,
		showonlyincombiner	= 0,
	},	
	LeapAttack = 
	{
		gameattributename 	= "leap_attack",
		bodypart		= part_back_legs,
		name			= 6100,
		shortdesc		= 6101,
		showonlyincombiner	= 0,
	},	
	FrenzyAttack = 
	{
		gameattributename 	= "frenzy_attack",
		bodypart		= part_creature,
		name			= 6105,
		shortdesc		= 6106,
		showonlyincombiner	= 0,
	},
	PlagueAttack = 
	{
		gameattributename 	= "plague_attack",
		bodypart		= part_head,
		name			= 6110,
		shortdesc		= 6111,
		showonlyincombiner	= 0,
	},
	QuillAttack =
	{
		gameattributename 	= "quill_burst",
		bodypart		= part_torso,
		name			= 6215,
		shortdesc		= 6216,
		showonlyincombiner	= 0,
	},	
	WebThrow =
	{
		gameattributename 	= "web_throw",
		bodypart		= part_tail,
		name			= 37496,
		shortdesc		= 37497,
		showonlyincombiner	= 0,
	},
	SoiledLand =
	{
		gameattributename 	= "soiled_land",
		bodypart		= part_back_legs,
		name			= 37506,
		shortdesc		= 37507,
		showonlyincombiner	= 0,
	},
        --SpeedBoost = 
	--{
	--	gameattributename 	= "speed_boost",
	--	bodypart		= part_wings,
	--	name			= 37510,
	--	shortdesc		= 37511,
	--	showonlyincombiner	= 0,
	--},
    Overpopulation = 
	{
		gameattributename 	= "overpopulation",
		bodypart		= part_creature,
		name			= 37512,
		shortdesc		= 37513,
		showonlyincombiner	= 0,
	},
    RangedPiercing = 
	{
		gameattributename 	= "ranged_piercing",
		bodypart		= part_head,
		name			= 37514,
		shortdesc		= 37515,
		showonlyincombiner	= 0,
	},
	Poison =
	{
		gameattributename 	= "poison_bite",
		bodypart		= part_head,
		name			= 37518,
		shortdesc		= 6201,
		showonlyincombiner	= 0,
	},
	PoisonSting =
	{
		gameattributename 	= "poison_sting",
		bodypart		= part_tail,
		name			= 37519,
		shortdesc		= 6201,
		showonlyincombiner	= 0,
	},
	PoisonPincer =
	{
		gameattributename 	= "poison_pincers",
		bodypart		= part_pincers,
		name			= 37532,
		shortdesc		= 6201,
		showonlyincombiner	= 0,
	},
}

---------------------------------------------------------------------
-- Table of all damage modifying abilities the game should display 
-- in the Armybuilder/Combiner


DamageModifyingAbilitiesList = 
{
	--Poison = 
	--{
		--dmgtype 		= DT_VenomSpray,
		--name			= 6200,
		--shortdesc		= 6201,
	--},
	Horns = 
	{
		dmgtype 		= DT_HornNegateArmour,
		name			= 6205,
		shortdesc		= 6206,
	},
	BarrierDestruction =
	{
		dmgtype 		= DT_BarrierDestroy,
		name			= 6210,
		shortdesc		= 6211,
	},
}

