---------------------------------------------------------------------
-- File    : MipLevels.lua
-- Desc    :
-- Created : October 2, 2001
-- Author  :
--
-- (c) 2001 Relic Entertainment Inc.
--

MipLevels_NumConfig = 4;

MipLevels =
{
	-- directories
	{	directory = "Art\\EBPs\\Characters\\",				maxDropLevels = { 0, 1, 2, 2, },	},
	{	directory = "Art\\EBPs\\Gatherers\\",				maxDropLevels = { 0, 1, 2, 2, },	},
	{	directory = "Art\\EBPs\\Nature\\",					maxDropLevels = { 0, 1, 2, 2, },	},
	{	directory = "Art\\EBPs\\NIS\\",						maxDropLevels = { 0, 0, 1, 2, },	},
	{	directory = "Art\\EBPs\\NIS_Structures_Props\\",	maxDropLevels = { 0, 0, 1, 2, },	},
	{	directory = "Art\\EBPs\\Projectiles\\",				maxDropLevels = { 1, 1, 2, 3, },	},
	{	directory = "Art\\EBPs\\Stock\\",					maxDropLevels = { 0, 1, 1, 2, },	},
	{	directory = "Art\\EBPs\\Structures\\",				maxDropLevels = { 0, 1, 2, 2, },	},
	{	directory = "Art\\EBPs\\UI\\",						maxDropLevels = { 0, 0, 1, 1, },	},
	{	directory = "Art\\EBPs\\Locations\\",				maxDropLevels = { 0, 1, 2, 3, },	},
	{	directory = "Art/FX/",								maxDropLevels = { 0, 1, 2, 3, },	},
	{	directory = "Art\\FX\\",							maxDropLevels = { 0, 1, 2, 3, },	},
	-- code generated
	{	directory = "*FX*",								maxDropLevels = { 0, 1, 2, 2, },	},
	{	directory = "*Combiner*",						maxDropLevels = { 0, 1, 1, 2, },	},
	{	directory = "*Terrain*",						maxDropLevels = { 0, 0, 0, 0, },	},
	{	directory = "*Decal*",							maxDropLevels = { 0, 0, 1, 2, },	},
	{	directory = "*Sky*",							maxDropLevels = { 0, 1, 2, 3, },	},
	{	directory = "*Water*",							maxDropLevels = { 0, 0, 1, 2, },	},
	{	directory = "*Detail*",							maxDropLevels = { 0, 0, 1, 2, },	},
}
