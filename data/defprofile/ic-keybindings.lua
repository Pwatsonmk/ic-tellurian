-- GROUPETYPE:
-- 0 = context group, looks to overlapid
-- 1 = global group
-- 2 = global locked
-- 3 = global locked invisible

-- OVERLAPID and OVERLAPFAMILY:
-- These two vars are used together to make sure there isn't any key mapped to two different commands in any given context
-- NOTE(1):	These two vars are only used for groups with grouptype = 0
-- NOTE(2):	A key cannot be assigned to two or more different commands in the following situation:
--		If the groups the commands belong are:
--		a) part of the same overlapfamily(if a overlapfamily=0, then a group has no family), and one overlapid=0 or both overlapids are equal
--		b) not part of the same overlapfamily but have equal overlapids

-- GROUP FAMILIES:
-- 0 - doesn't belong to 
-- 1 - units
-- 2 - buildings
-- 3 - buildings no rally

-- GROUPS:
-- 0 - none
-- 1 - creatures, units
-- 2 - generic structures
-- 3 - egen
-- 4 - genetic amplifier
-- 5 - research clinic
-- 6 - lab
-- 7 - build menu
-- 8 - foundry
-- 9 - landing pad

keybindingversion = 64
keygroups = 
{
	systemcommands = 
	{
		keys = 
		{
			escape			= {"Escape",52011},
			accept			= {"Enter",52121},
			commandqueue	= {"Shift",52012},
			pause			= {"Pause", 52124},	
		},
		locid = 52000,
		grouptype = 2,
		overlapid = 0,
		overlapfamily = 0,
	},

	select =
	{
		keys =
		{
			unitsonscreen			= {"Control+E",52101},
			henchmenonscreen		= {"Control+H",52102},
			henchmeninworld			= {"Control+Shift+H",52103},
			henchmennextidle		= {"LBracket",52104},
			henchmenallidle			= {"RBracket",52105},
			combatonscreen			= {"Control+Q",52106},
			combatinworld			= {"Control+Shift+Q",52107},
			groundcombatonscreen	= {"Control+G",52108},
			groundcombatinworld		= {"Control+Shift+G",52109},
			aircombatonscreen		= {"Control+F",52110},
			aircombatinworld		= {"Control+Shift+F",52111},
			watercombatonscreen		= {"Control+T",52112},
			watercombatinworld		= {"Control+Shift+T",52113},
			nextgroundcombiner		= {"Control+C",52114},
			nextwatercombiner		= {"Control+W",52115},
			nextaircombiner			= {"Control+A",52116},
			lab						= {"Control+Z",52023},
			rex						= {"F1",52295},
			lucy					= {"F2",52296},
			nextsubselect			= {"Tab",52270},
			unassignallgroups 		= {"Control+U", 	52117},
		},
		locid = 52130,
		grouptype = 1,
		overlapid = 0,
		overlapfamily = 0,
	},

	basicunitcommands = 
	{
		keys = 
		{
			stop 				= {"S",	52013},
			move 				= {"M",	52014},
			kill 				= {"Delete",52015},
			attack				= {"A",	52034},
			buildmenu			= {"B",	52052},
			buildmenuadvanced	= {"N",	52081},
			gather				= {"W",	52056},
			repair				= {"R",	52053},
			
		},
		locid = 52001,
		grouptype = 0,
		overlapid = 0,
		overlapfamily = 1,
	},

	basicbuildingcommands = 
	{
		keys = 
		{
			rally		= {"Q",52017},
			--research	= {"R",52016},
		},
		locid = 52002,
		grouptype = 0,
		overlapid = 0,
		overlapfamily = 2,
	},
	
	egencommands = 
	{
		keys = 
		{
			
			research		= {"R", 52016},
			--addon_egen1 	= {"R",52174},
			--addon_egen2	= {"R",52175},
			--addon_egen3	= {"R",52176},

	},
		locid = 52202,
		grouptype = 0,
		overlapid = 3,
		overlapfamily = 3,
	},
	
	geneticamplifiercommands = 
	{
		keys = 
		{
			upgrade_defense			= {"Z",52177},
			upgrade_speed			= {"X",52178},
			upgrade_meleedamage		= {"C",52179},
			upgrade_hitpoints		= {"V",52180},
			upgrade_sightradius		= {"B",52181},
			upgrade_rangeddamage		= {"N",52182},
			upgrade_splashdamage		= {"M",52183},
			upgrade_areaattackradius 	= {"Comma",52184},
		},
		locid = 52200,
		grouptype = 0,
		overlapid = 4,
		overlapfamily = 3,
	},
	
	researchcliniccommands = 
	{
		keys = 
		{
			research_henchmanbinoculars 	= {"Z",52165},
			research_henchmantag		= {"X",52166},
			research_henchmanyoke		= {"C",52167},
			research_henchmanheal		= {"V",52168},
			research_henchmanmotspeech	= {"B",52169},
			research_incbuildintegrity	= {"N",52170},
			research_towerupgrade		= {"M",52171},
			research_strengthenfences	= {"Comma",52172},
			research_strengthenelecgrid	= {"Period",52173},
			research_labdefense	= {"L",52185},
		},
		locid = 52201,
		grouptype = 0,
		overlapid = 5,
		overlapfamily = 3,
	},

	gamecommands = 
	{
		keys = 
		{
			showpausemenu		= {"F10"		,52018},
			showallymenu		= {"F9"			,52019},
			showarmybuilder		= {"F12"		,52020},
			-- showdiplomacymenu	= {"F7"			,52021},
			showobjectivesmenu	= {"F11"		,52022},
			gotolastevent		= {"Space"		,52024},
			teamobjective		= {"F8"			,52090},
			recallspeech		= {"F7"			,52021},
		},
		locid = 52003,
		grouptype = 1,
		overlapid = 0,
		overlapfamily = 0,
	},

	chambercommands = 
	{
		keys = 
		{
			buildcreature1 = {"Z",52025},
			buildcreature2 = {"X",52026},
			buildcreature3 = {"C",52027},
			buildcreature4 = {"V",52028},
			buildcreature5 = {"B",52029},
			buildcreature6 = {"N",52030},
			buildcreature7 = {"M",52031},
			buildcreature8 = {"Comma",52032},
			buildcreature9 = {"Period",52033},
		},
		locid = 52004,
		grouptype = 0,
		overlapid = 2,
		overlapfamily = 2,
	},
	
	soundbeamcommands = 
	{
		keys = 
		{
			sonicboom = {"B",52299},
		},
		locid = 52207,
		grouptype = 0,
		overlapid = 2,
		overlapfamily = 3,
	},

	antiaircommands = 
	{
		keys = 
		{
			airburst = {"B",52300},
		},
		locid = 52208,
		grouptype = 0,
		overlapid = 2,
		overlapfamily = 3,
	},
	
	creaturecommands = 
	{
		keys = 
		{
			--attack			= {"A",	52034},
			guard			= {"G",	52035},
			patrol			= {"P",	52036},
			stance_none		= {"V",	52037},
			stance_passive		= {"C",	52038},
			stance_territorial	= {"X",	52039},
			stance_aggressive	= {"Z",	52040},
			rangeattack		= {"T",	52042},
			-- abilities
			special_stink		= {"L",	52043},
			special_burst		= {"E",	52044},
			special_quill		= {"Q",	52080},
			special_frenzy		= {"F",	52046},
			special_digin		= {"D",	52047},
			special_soiledland	= {"N", 52305},
			--special_digout		= {"D",	52047},
			special_jumping		= {"J", 52048},
			special_sonar		= {"O",	52050},
			special_plague		= {"U",	52051},
			special_web			= {"W", 52301},
			special_assassinate	= {"K", 52302},
			special_flash		= {"F", 52303},
			special_infestation	= {"I", 52304},
		},
		locid = 52005,
		grouptype = 0,
		overlapid = 1,
		overlapfamily = 1,
	},

	henchmancommands = 
	{
		keys = 
		{			
			heal				= {"H",		52055},
			tag				= {"Slash",	52057},	
			unload			= {"U",		52084},
			airlift				= {"Semicolon",52086},
			untag			= {"Period",	52087},
		},
		locid = 52006,
		grouptype = 0,	
		overlapid = 1,
		overlapfamily = 1,
	},

	henchmanbuildcommands = 
	{
		keys = 
		{
			lightning		= {"L",52058},
			electrical		= {"G",52059},
			bramble			= {"F",52060},
			remote			= {"C",52061},
			water			= {"W",52062},
			aviary			= {"A",52063},
			vetclinic		= {"R",52064},
			foundry			= {"O",52065},
			soundbeamtower	= {"S",52067},
			antiairtower	= {"T",52066},
			landingpad		= {"P",52150},
			geneticamp		= {"I",52151},
			buildtoggle		= {"B",52083},
		},
		locid = 52007,
		grouptype = 0,
		overlapid = 7,
		overlapfamily = 0,
	},

	rexcommands = 
	{
		keys = 
		{
			gatherdna	= {"Y",	52069},
			garrison	= {"Apostrophe",	52070},
		},
		locid = 52008,
		grouptype = 0,
		overlapid = 1,
		overlapfamily = 1,
	},

	lucycommands = 
	{
		keys = 
		{
			garrison		= {"Apostrophe",	52072},
			gathertech		= {"K",	52074},
			sabotage		= {"J",	52075},
		},
		locid = 52009,
		grouptype = 0,
		overlapid = 1,
		overlapfamily = 1,
	},

	labcommands = 
	{
		keys = 
		{
			createhenchman			= {"C",	52076},
			releaserex				= {"Semicolon",	52077},
			releaselucy				= {"Apostrophe", 52078},
			radarpulse				= {"P",	52079},
			research_advancedstruct	= {"Z",52160},
			defenseturnon			= {"D",52297},
			defenseturnoff			= {"D",52298},
			research				= {"R", 52016},
	--		research_rank2			= {"R",52161},
	--		research_rank3			= {"R",52162},
	--		research_rank4			= {"R",52163},
	--		research_rank5			= {"R",52164},
		},
		locid = 52010,
		grouptype = 0,
		overlapid = 6,
		overlapfamily = 2,
	},

	foundrycommands = 
	{
		keys = 
		{
			electocoal100	= {"W", 52307},
			electocoal500	= {"E", 52308},
			coaltoelec100	= {"X", 52309},
			coaltoelec500	= {"C", 52310},
		},
		locid = 52306,
		grouptype = 0,
		overlapid = 8,
		overlapfamily = 2,
	},
	
	landingpadcommands = 
	{
		keys = 
		{
			creategyrocopter	= {"G",	52054},
		},
		locid = 52082,
		grouptype = 0,
		overlapid = 9,
		overlapfamily = 2,
	},

	playbackcommands =
	{
		keys = 
		{
			speednormal = {"Control+N" , 52312},
			speedfast   = {"Control+F" , 52313},
		},
		locid = 52311,
		grouptype = 1,
		overlapid = 0,
		overlapfamily = 0,
	},

	hotkeygroups = 
	{
		keys = 
		{
			assigntogroup0	= {"Control+0",	52259},
			assigntogroup1	= {"Control+1",	52250},
			assigntogroup2	= {"Control+2",	52251},
			assigntogroup3	= {"Control+3",	52252},
			assigntogroup4	= {"Control+4",	52253},
			assigntogroup5	= {"Control+5",	52254},
			assigntogroup6	= {"Control+6",	52255},
			assigntogroup7	= {"Control+7",	52256},
			assigntogroup8	= {"Control+8",	52257},
			assigntogroup9	= {"Control+9",	52258},
			assigngroup	= {"Control",		52260},
		},
		locid = 52203,
		grouptype = 2,
		overlapid = 0,
		overlapfamily = 0,
	},
	
	lockedselection = 
	{
		keys = 
		{
			selectmodifier1	= {"Control", 52127},
			selectmodifier2	= {"Shift", 52128},
		},
		locid = 52204,
		grouptype = 2,
		overlapid = 0,
		overlapfamily = 0,
	},
	
	hiddenselection =
	{
		keys =
		{
			selectentity	= {"MouseLeft", 52125},
			doaction		= {"MouseRight", 52126},
			primaryzoom	= {"MouseLeft", 52282},
			secondaryzoom	= {"MouseRight", 52283},
			pan			= {"MouseMiddle", 52284},
			mousepanleft	= {"ScreenLeft", 52285},
			mousepanright	= {"ScreenRight", 52286},
			mousepanup	= {"ScreenTop", 52287},
			mousepandown	= {"ScreenBottom", 52288},
			selectgroup1	= {"1", 52125},
			selectgroup2	= {"2", 52126},
			selectgroup3	= {"3", 52282},
			selectgroup4	= {"4", 52283},
			selectgroup5	= {"5", 52284},
			selectgroup6	= {"6", 52285},
			selectgroup7	= {"7", 52286},
			selectgroup8	= {"8", 52287},
			selectgroup9	= {"9", 52288},
			selectgroup0	= {"0", 52288},
		},
		locid = 0,
		grouptype = 3,
		overlapid = 0,
		overlapfamily = 0,
	},


	hiddenreservedkeys =
	{
		keys =
		{
			quitapplication1	= {"Alt+F4", 0},
			quitapplication2	= {"Alt+Shift+F4", 0},
			toggleapplication1	= {"Control+Alt+Shift+Escape", 0},
			toggleapplication2	= {"Alt+Escape", 0},
			toggleapplication3	= {"Alt+Shift+Escape", 0},
		},
		locid = 0,
		grouptype = 3,
		overlapid = 0,
		overlapfamily = 0,
	},
	
	cameracontrol = 
	{
		keys = 
		{
			returntodefault	= {"Backspace",	52280},
			rotatecamera	= {"Alt",	52281},
			keypanleft		= {"Left", 52289},
			keypanright		= {"Right", 52290},
			keypanup		= {"Up", 52291},
			keypandown		= {"Down", 52292},
			focus			= {"ScrollLock", 52123},
		},
		locid = 52205,
		grouptype = 2,
		overlapid = 0,
		overlapfamily = 0,
	},

	cameracontrolfree = 
	{
		keys = 
		{
			keyzoomin		= {"Equal", 52293},
			keyzoomout		= {"Minus", 52294},
		},
		locid = 52206,
		grouptype = 1,
		overlapid = 0,
		overlapfamily = 0,
	},
}