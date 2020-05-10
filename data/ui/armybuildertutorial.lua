-- army builder tutorial

tutorial = 
{
	-- each entry consists of 
	--  name of the screen
	--  name of the hud that shows the tutorial text
	--  id of the text to display
	--  id of sound patch to play
	--  number of seconds to delay before showing text
	--  number of seconds to delay before hiding text
	--  name of the hud that triggers the next tutorial step (will flash)
	--  name of hud that should flash and is pressable, but does not trigger the next tutorial step
	--  indicates if "continue" button should appear (0 for no, 1 for yes)

	{ "armybuilder",	"armybuilder_tutorial",		31049,	"Data:audio/Speech/TUT/T06/31049.pat",	0.0,	15,	"",				"",					1 },
	{ "armybuilder",	"armybuilder_tutorial",		31050,	"Data:audio/Speech/TUT/T06/31050.pat",	0.2,	8,	"",				"",					1 },
	{ "armybuilder",	"armybuilder_tutorial",		31051,	"Data:audio/Speech/TUT/T06/31051.pat",	0.2,	0,	"buildcreaturebutton", "",			0 },
	{ "combiner",		"bottom_tutorial",			31052,	"Data:audio/Speech/TUT/T06/31052.pat",	0.5,	0,	"setinput0",	"",					0 },
	{ "combiner",		"bottom_tutorial",			31053,	"Data:audio/Speech/TUT/T06/31053.pat",	0.5,	17,	"",				"",					1 },
	{ "combiner",		"bottom_tutorial",			31054,	"Data:audio/Speech/TUT/T06/31054.pat",	0.2,	18,	"",				"",					1 },
	{ "combiner",		"top_tutorial",				31055,	"Data:audio/Speech/TUT/T06/31055.pat",	0.2,	15,	"accept",		"",					1 },
	{ "combiner",		"bottom_tutorial",			31056,	"Data:audio/Speech/TUT/T06/31056.pat",	0.5,	0,	"setinput1",	"",					0 },
	{ "combiner",		"bottom_tutorial",			31057,	"Data:audio/Speech/TUT/T06/31057.pat",	0.2,	7,	"accept",		"",					1 },
	{ "combiner",		"bottom_tutorial",			31058,	"Data:audio/Speech/TUT/T06/31058.pat",	1.0,	8,	"",				"",					1 },
	{ "combiner",		"bottom_tutorial",			31059,	"Data:audio/Speech/TUT/T06/31059.pat",	0.2,	15,	"",				"limbs",			1 },
	{ "combiner",		"top_tutorial",				31060,	"Data:audio/Speech/TUT/T06/31060.pat",	0.2,	12,	"",				"",					1 },
	-- { "combiner",		"bottom_tutorial",			31061,	"Data:audio/Speech/TUT/T06/31061.pat",	0.2,	15,	"",				"",					1 },
	{ "combiner",		"bottom_tutorial",			31062,	"Data:audio/Speech/TUT/T06/31062.pat",	0.2,	0,	"picture",		"",					0 },
	{ "combiner",		"bottom_tutorial",			31063,	"Data:audio/Speech/TUT/T06/31063.pat",	0.8,	18,	"addtoarmy",	"addtoarmy_button",	1 },
	-- { "combiner",		"bottom_tutorial",			31064,	"Data:audio/Speech/TUT/T06/31064.pat",	0.2,	8,	"",				"",					1 },
	{ "armybuilder",	"armybuilder_tutorial",		31065,	"Data:audio/Speech/TUT/T06/31065.pat",	0.5,	12,	"",				"",					1 },
	{ "armybuilder",	"armybuilder_tutorial",		31066,	"Data:audio/Speech/TUT/T06/31066.pat",	0.2,	15,	"",				"",					1 },
	{ "armybuilder",	"armybuilder_tutorial",		31067,	"Data:audio/Speech/TUT/T06/31067.pat",	0.2,	14,	"back",			"",					0 },
}
