-------------------------------------------------------------------------------
-- PitchEnvDefault.lua --
-- created by egeorges, 12/03/01
-- contains envelope definitions  -- currently scripted tables
--

-- Defines 
-- 	"ENVELOPE TYPES"
--    ENV_TYPE_ENVELOPE	=	1
--    ENV_TYPE_LFO      =	2

-- 	"ENVELOPE FLAGS" 
--    ENV_USE_SECONDS   =     1
--    ENV_USE_TICKS     =     2

--    ENV_INFINITE_LOOP =     0

Filename	= "DATA:AUDIO\\Envelopes\\PitchEnvDefault.lua" 
Type		= 2
Flag		= 1
LoopStart	= 0
LoopEnd	= 1
LoopCount   = 0			
-- data (targetvalue , timevalue) --
EnvelopeData= {1.0,5.0, 
               0.0,5.0}
              