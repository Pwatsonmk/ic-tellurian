-- tooltip modes

-- tooltip is generated around the hud that generates it
Self_Above			= 65
Self_Below			= 66
Self_Left			= 68
Self_Right			= 72

Self_CenteredAbove	= 81
Self_CenteredBelow	= 82
Self_CenteredLeft	= 84
Self_CenteredRight	= 88

-- tooltip is generated around the pos of the spawn point hud
Point_Above			= 33
Point_Below			= 34
Point_Left			= 36
Point_Right			= 40

Point_CenteredAbove	= 49
Point_CenteredBelow	= 50
Point_CenteredLeft	= 52
Point_CenteredRight	= 56


tooltips = 
{
	-- each entry consists of 
	--  name of the hud to apply a tooltip
	--  name of the hud to use as a tooltip
	--  name of the hud to extract the position of a spawn point for tooltips with the appropriate mode set
	--  id of the text to use for title/single-line
	--  id of the text to use for body 
	--  0/1 to auto-resize
	--  tooltip mode, See choices above 
	{ "username_label",				"statusbar_helptext",	"statusbar_helptext", 0, 31801, 0, Point_Below },
	{ "username_edittext",				"statusbar_helptext",	"statusbar_helptext", 0, 31801, 0, Point_Below },
	{ "password_label",				"statusbar_helptext",	"statusbar_helptext", 0, 31802, 0, Point_Below },
	{ "edittextback0",				"statusbar_helptext",	"statusbar_helptext", 0, 31802, 0, Point_Below },
	{ "password_label0",				"statusbar_helptext",	"statusbar_helptext", 0, 31803, 0, Point_Below },
	{ "password1_edittext",				"statusbar_helptext",	"statusbar_helptext", 0, 31803, 0, Point_Below },
	{ "accept",				"statusbar_helptext",	"statusbar_helptext", 0, 31804, 0, Point_Below },
	{ "cancel",				"statusbar_helptext",	"statusbar_helptext", 0, 31805, 0, Point_Below },
	{ "day_combo",				"statusbar_helptext",	"statusbar_helptext", 0, 31806, 0, Point_Below },
	{ "month_combo",				"statusbar_helptext",	"statusbar_helptext", 0, 31807, 0, Point_Below },
	{ "year_combo",				"statusbar_helptext",	"statusbar_helptext", 0, 31808, 0, Point_Below },
}
