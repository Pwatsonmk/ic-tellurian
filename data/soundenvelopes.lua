-------------------------------------------------------------------------------
-- SoundEnvelopes.lua --
-- created by egeorges, 12/03/01
-- contains envelope definitions  -- currently scripted tables
--

-- Defines 
-- 	"ENVELOPE TYPES"
ENV_TYPE_ENVELOPE	=	1
ENV_TYPE_LFO	=	2

-- 	"ENVELOPE FLAGS" 
ENV_USE_SECONDS	=	1
ENV_USE_TICKS	=	2
ENV_INFINITE_LOOP =     0

-- envelope files to load

EnvelopeFiles = {	"DATA:AUDIO\\Envelopes\\VolumeEnvDefault.lua",
			"DATA:AUDIO\\Envelopes\\PitchEnvDefault.lua",
			"DATA:AUDIO\\Envelopes\\VolumeEnvAntiAir.lua",
			"DATA:AUDIO\\Envelopes\\VolumeEnvInsectFoot1.lua",
                        "DATA:AUDIO\\Envelopes\\VolumeEnvHenchIdle.lua"}