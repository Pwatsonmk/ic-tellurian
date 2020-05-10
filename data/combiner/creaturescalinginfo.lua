-------------------------------------------------------------------------------
--	Creature Scaling Info
--
--	This file contains the data that tells the combiner what size a result
-- 	creature should be after it comes out of the combiner.
--	i.e. if it is a size 5 creature it should be this volume within these
--	x,y,z tolerances

-- OBBVol	- the desired volume (in meters) of the oriented bounding box for the combined creature at that size
-- maxXdim	- the maximum the X dimension (left-right) size the creature can get (in meters)
-- maxYdim	- the maximum the Y dimension (ground-heighest point) size the creature can get (in meters)
-- maxZdim	- the maximum the Z dimension (front-back) size the creature can get (in meters)

SizeScaling =
{
	{	-- Size 1 Creature
		FootPrint	= 10000.0,
		OBBVol		= 8.0,
		maxXdim     = 3.0,
		maxYdim     = 4.5,
		maxZdim     = 5.0,
	},
	{	-- Size 2 Creature
		FootPrint	= 10000.0,
		OBBVol		= 10.0,
		maxXdim     = 4.0,
		maxYdim     = 6.0,
		maxZdim     = 5.0,
	},
	{	-- Size 3 Creature
		FootPrint	= 10000.0,
		OBBVol		= 12.0,
		maxXdim     = 5.0,
		maxYdim     = 7.0,
		maxZdim     = 5.0,
	},
	{	-- Size 4 Creature
		FootPrint	= 10000.0,
		OBBVol		= 15.0,
		maxXdim     = 6.0,
		maxYdim     = 8.0,
		maxZdim     = 5.0,
	},
	{	-- Size 5 Creature
		FootPrint	= 10000.0,
		OBBVol		= 20.0,
		maxXdim     = 6.5,
		maxYdim     = 8.0,
		maxZdim     = 5.0,
	},
	{	-- Size 6 Creature
		FootPrint	= 10000.0,
		OBBVol		= 28.0,
		maxXdim     = 7.0,
		maxYdim     = 8.0,
		maxZdim     = 6.0,
	},
	{	-- Size 7 Creature
		FootPrint	= 10000.0,
		OBBVol		= 40.0,
		maxXdim     = 7.0,
		maxYdim     = 8.5,
		maxZdim     = 7.0,
	},
	{	-- Size 8 Creature
		FootPrint	= 10000.0,
		OBBVol		= 55.0,
		maxXdim     = 7.0,
		maxYdim     = 9.0,
		maxZdim     = 8.0,
	},
	{	-- Size 9 Creature
		FootPrint	= 10000.0,
		OBBVol		= 75.0,
		maxXdim     = 8.0,
		maxYdim     = 10.0,
		maxZdim     = 9.0,
	},
	{	-- Size 10 Creature
		FootPrint	= 10000.0,
		OBBVol		= 100.0,
		maxXdim     = 10.0,
		maxYdim     = 12.0,
		maxZdim     = 10.0,
	},
}

