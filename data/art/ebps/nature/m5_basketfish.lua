-- basket of fish

-- inherit from nature data
dofilepath("data:art/ebps/defstats0.lua")

-- extend gameattributes table
ext = gameattributes;

-- non collidable so it can be spawned and despawned
ext.simcollides = 0