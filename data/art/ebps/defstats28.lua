-- fire

gameattributes = {

-- defaults
actbeselect = 1,
isvisible = 1,
simcollides = 1,
singleselectonly = 1,

-- healthextinfo
hitpoints = 100,

-- siteextinfo
is_land = 1,
is_water = 0,
is_shoreline = 0,
visibleInFow = 1,
-- Value of 0 means no change to default orientation, 1,2,3 means rotate by n*90 degrees, so 2 means 180 degrees
orientation = 1,
snapSurface = 0,
snapHeightMap = 1,
showSiteDecal = 0,

-- shadow stuff
no_shadow = 1,

fadeAndDeleteWhenDead = 1,

stayInPathfindingAfterDead = 0,

attachTo = 0,

}

-- extend gameattributes table
ext = gameattributes;

-- fireextinfo
ext.damageRadius = 5.0
ext.damagePerTick = 5.0
