-------------------------------------------------------------------------------
--	Fyling Creature Scaling Info
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
		maxXdim     = 2.0,
		maxYdim     = 3.0,
		maxZdim     = 3.4,
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
		OBBVol		= 15.0,
		maxXdim     = 6.0,
		maxYdim     = 8.0,
		maxZdim     = 6.0,
	},
	{	-- Size 4 Creature
		FootPrint	= 10000.0,
		OBBVol		= 22.0,
		maxXdim     = 8.0,
		maxYdim     = 10.0,
		maxZdim     = 7.0,
	},
	{	-- Size 5 Creature
		FootPrint	= 10000.0,
		OBBVol		= 30.0,
		maxXdim     = 12.5,
		maxYdim     = 15.0,
		maxZdim     = 11.0,
	},
	{	-- Size 6 Creature
		FootPrint	= 10000.0,
		OBBVol		= 40.0,
		maxXdim     = 15.0,
		maxYdim     = 18.0,
		maxZdim     = 14.0,
	},
	{	-- Size 7 Creature
		FootPrint	= 10000.0,
		OBBVol		= 50.0,
		maxXdim     = 18.0,
		maxYdim     = 20.5,
		maxZdim     = 16.0,
	},
	{	-- Size 8 Creature
		FootPrint	= 10000.0,
		OBBVol		= 65.0,
		maxXdim     = 24.0,
		maxYdim     = 26.0,
		maxZdim     = 22.0,
	},
	{	-- Size 9 Creature
		FootPrint	= 10000.0,
		OBBVol		= 95.0,
		maxXdim     = 32.0,
		maxYdim     = 36.0,
		maxZdim     = 29.0,
	},
	{	-- Size 10 Creature
		FootPrint	= 10000.0,
		OBBVol		= 125.0,
		maxXdim     = 40.0,
		maxYdim     = 42.0,
		maxZdim     = 38.0,
	},
}

