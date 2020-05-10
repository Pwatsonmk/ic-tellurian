-- Lab

-- inherit from lab data
dofilepath("data:art/ebps/defstats5.lua")

-- extend gameattributes table
ext = gameattributes;

-- baseline optimization
ext.min_triangle_count=1300

-- structure defense ext info
--
-- cost of activation
ext.renewCost = 500.0

-- electricity drainingRate per tick
ext.drainRate = 4.4

-- amount of damage reduced to
ext.damageMin = 1.0

-- number of game ticks to fill the whole temperature bar
ext.barFillTicks = 1500

-- number of game ticks to drain the whole temperature bar
ext.barDrainTicks = 2500

-- percentage lower bound of warning status (orange colour)
ext.barWarning = 0.6

-- percentage lower bound of critical status (red colour)
ext.barCritical = 0.8

-- percentage upper bound to relief critical cool down back to normal operation
ext.barCoolDown = 0.3