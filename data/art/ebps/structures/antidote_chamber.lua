-- antidote chamber

-- inherit from lab(defstats23)
dofilepath("data:art/ebps/defstats23.lua")

ext = gameattributes;
-- genstruct ext info
ext.hasHealth = 1;

ext.constructionticks = 500

-- healthextinfo
ext.hitpoints = 3000
ext.fadeAndDeleteWhenDead = 0
ext.stayInPathfindingAfterDead = 1
hide_type = 6


-- end of file
