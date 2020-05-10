-- fire_light
-- extend gameattributes table

dofilepath("data:art/ebps/defstats28.lua")

ext = gameattributes;

-- make the fire non selectable
ext.actbeselect = 0

-- fireextinfo
ext.damageRadius = 0.0
ext.damagePerTick = 0.0
ext.visibleInFow = 1
