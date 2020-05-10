-- default NIS

-- inherit from henchman data
dofilepath("data:art/ebps/defstats0.lua")

ext = gameattributes;

ext.simcollides = 0;
ext.singleselectonly = 1;
ext.island = 0;

ext.staticshadow = 0;
ext.nospotshadow = 1;
ext.norotatesnap = 1;

ext.disable_cheap_skinning = 1;

-- simvis occlusion
ext.simvis_occluder = 0;

