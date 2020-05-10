-- geyser water

-- inherit from defstats29 data (geyser)
dofilepath("data:art/ebps/defstats29.lua")

-- extend gameattributes table
ext = gameattributes;

-- water geyser rests on the floor of the ocean
ext.snapSurface = 0
ext.snapHeightMap = 1
ext.is_land = 0
ext.is_water = 1

-- end of file