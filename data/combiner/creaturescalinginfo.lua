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
		OBBVol		= 12.0,
		maxXdim     = 5.0,
		maxYdim     = 5.4,
		maxZdim     = 5.4,
	},
	{	-- Size 2 Creature
		FootPrint	= 10000.0,
		OBBVol		= 12.0,
		maxXdim     = 5.8,
		maxYdim     = 6.2,
		maxZdim     = 6.2,
	},
	{	-- Size 3 Creature
		FootPrint	= 10000.0,
		OBBVol		= 18.0,
		maxXdim     = 6.6,
		maxYdim     = 7.2,
		maxZdim     = 7.2,
	},
	{	-- Size 4 Creature
		FootPrint	= 10000.0,
		OBBVol		= 24.0,
		maxXdim     = 7.7,
		maxYdim     = 8.4,
		maxZdim     = 8.4,
	},
	{	-- Size 5 Creature
		FootPrint	= 10000.0,
		OBBVol		= 31.0,
		maxXdim     = 8.8,
		maxYdim     = 9.7,
		maxZdim     = 9.7,
	},
	{	-- Size 6 Creature
		FootPrint	= 10000.0,
		OBBVol		= 41.0,
		maxXdim     = 10.2,
		maxYdim     = 11.2,
		maxZdim     = 11.2,
	},
	{	-- Size 7 Creature
		FootPrint	= 10000.0,
		OBBVol		= 54.0,
		maxXdim     = 11.7,
		maxYdim     = 12.9,
		maxZdim     = 12.9,
	},
	{	-- Size 8 Creature
		FootPrint	= 10000.0,
		OBBVol		= 71.0,
		maxXdim     = 13.5,
		maxYdim     = 15.0,
		maxZdim     = 15.0,
	},
	{	-- Size 9 Creature
		FootPrint	= 10000.0,
		OBBVol		= 94.0,
		maxXdim     = 15.6,
		maxYdim     = 17.3,
		maxZdim     = 17.3,
	},
	{	-- Size 10 Creature
		FootPrint	= 10000.0,
		OBBVol		= 125.0,
		maxXdim     = 18.0,
		maxYdim     = 20.0,
		maxZdim     = 20.0,
	},
}

