-- Generic Structure Controller

gameattributes = {

actbeselect = 1,
isvisible = 1,
simcollides = 1,
singleselectonly = 1,

-- siteextinfo
-- NOTE:  Only one of these must be set if more than one is set it will assert in debug mode
is_land = 1,
is_water = 0,
is_shoreline = 0,
visibleInFow = 0,
attachTo = 0,
-- Value of 0 means no change to default orientation, 1,2,3 means rotate by n*90 degrees, so 2 means 180 degrees
orientation = 0,
snapSurface = 0,
snapHeightMap = 1,
showSiteDecal = 1,

-- sightextinfo
owner_visible_only = 0,

-- does this object have health
hasHealth = 0,
hasAttachObject = 0,

--
hitpoints = 0,
isBuildable = 0,
isRepairable = 0,
hasCost = 0,
cost = 0,
costrenew = 0,
constructionticks = 0,

-- simvis occlusion info
simvis_occluder = 1,

-- uiextinfo (minimap,ghosting,etc)
ghost_enable = 1,
minimap_enable = 1,
minimap_teamcolour = 1,

fadeAndDeleteWhenDead = 1,

stayInPathfindingAfterDead = 0,

-- objectinfo - hide type of Steel
hide_type = 6,
size = 1,
front_foot_type = 0,
rear_foot_type = 0,
vocal_type = 0,

}