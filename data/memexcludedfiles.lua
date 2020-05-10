---------------------------------------------------------------------
-- File    : MemExcludedFiles.lua
-- Desc    :
-- Created : Wednesday, July 06, 2001
-- Author  :
--
-- (c) 2001 Relic Entertainment Inc.
--

FileList =
{
	-- lua
	{	filename = "lapi.c",			fileline =   0	},
	{	filename = "lauxlib.c",			fileline =   0	},
	{	filename = "lbaselib.c",		fileline =   0	},
	{	filename = "lcode.c",			fileline =   0	},
	{	filename = "ldo.c",				fileline =   0	},
	{	filename = "lfunc.c",			fileline =   0	},
	{	filename = "lgc.c",				fileline =   0	},
	{	filename = "liolib.c",			fileline =   0	},
	{	filename = "llex.c",			fileline =   0	},
	{	filename = "lmathlib.c",		fileline =   0	},
	{	filename = "lmem.c",			fileline =   0	},
	{	filename = "lobject.c",			fileline =   0	},
	{	filename = "lparser.c",			fileline =   0	},
	{	filename = "lstate.c",			fileline =   0	},
	{	filename = "lstring.c",			fileline =   0	},
	{	filename = "ltable.c",			fileline =   0	},
	{	filename = "ltm.c",				fileline =   0	},
	{	filename = "luamem.c",			fileline =   0	},
	{	filename = "lvm.c",				fileline =   0	},
	{	filename = "lstrlib.c",			fileline =   0	},

	-- stl
	{	filename = "_algobase.c",		fileline =   0	},
	{	filename = "_algobase.h",		fileline =   0	},
	{	filename = "_alloc.c",			fileline =   0	},
	{	filename = "_alloc.h",			fileline =   0	},
	{	filename = "_bvector.h",		fileline =   0	},
	{	filename = "_construct.h",		fileline =   0	},
	{	filename = "_deque.c",			fileline =   0	},
	{	filename = "_deque.h",			fileline =   0	},
	{	filename = "_function.h",		fileline =   0	},
	{	filename = "_hash_map.h",		fileline =   0	},
	{	filename = "_hashtable.c",		fileline =   0	},
	{	filename = "_hashtable.h",		fileline =   0	},
	{	filename = "_list.c",			fileline =   0	},
	{	filename = "_list.h",			fileline =   0	},
	{	filename = "_map.h",			fileline =   0	},
	{	filename = "_pair.h",			fileline =   0	},
	{	filename = "_queue.h",			fileline =   0	},
	{	filename = "_set.h",			fileline =   0	},
	{	filename = "_slist.h",			fileline =   0	},
	{	filename = "_string.c",			fileline =   0	},
	{	filename = "_string.h",			fileline =   0	},
	{	filename = "_string_fwd.h",		fileline =   0	},
	{	filename = "_tree.c",			fileline =   0	},
	{	filename = "_tree.h",			fileline =   0	},
	{	filename = "_uninitialized.h",	fileline =   0	},
	{	filename = "_vector.c",			fileline =   0	},
	{	filename = "_vector.h",			fileline =   0	},

	-- boost
	{	filename = "smart_ptr.h",		fileline =   0	},

	-- assist
	{	filename = "array2d.h",			fileline =   0	},
	{	filename = "stlexmap.h",		fileline =   0	},
	{	filename = "stlexsmallvector.h",fileline =   0	},

	-- util
	{	filename = "iff.h",				fileline =   0	},

	-- other
	{	filename = "modelload.c",		fileline =  69	},
	{	filename = "modelload.c",		fileline = 160	},
	{	filename = "modelload.c",		fileline = 334	},
	{	filename = "modelload.c",		fileline = 541	},
	{	filename = "modelload.c",		fileline = 701	},
	{	filename = "modelload.c",		fileline = 806	},
	{	filename = "modelload.c",		fileline = 917	},
	{	filename = "modelload.c",		fileline = 937	},

	{	filename = "ui.h",				fileline = 465	},
	{	filename = "ui.h",				fileline = 566	},
	{	filename = "ui.h",				fileline = 587	},


	-- LuaConfig
	{	filename = "luaconfig.c",		fileline =   0	},
	{	filename = "luabinding.c",		fileline =   0	},
	{	filename = "luabinding.h",		fileline =   0	},
	
	-- D3D dummy tracking info helpers, remove for normal mem dumps
	{	filename = "texture.c",			fileline =   0	},
	{	filename = "spinterface.c",		fileline =   0	},
	{	filename = "geometry.c",		fileline =   0	},
	{	filename = "spooge/spooge.h",	fileline =   0	},
	{	filename = "iff.c",				fileline =   0	},
	
}
