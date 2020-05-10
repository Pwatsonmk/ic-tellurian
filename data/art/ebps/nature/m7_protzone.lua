-- inherit from defstats23 data
dofilepath("data:art/ebps/defstats23.lua")

-- extend gameattributes table
ext = gameattributes;

ext.hitpoints = 1000
ext.constructionticks = 500

ext.actbeselect = 0