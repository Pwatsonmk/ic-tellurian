-------------------------------------------------------------------------------
-- SoundConfig.lua --
-- created by egeorges, 09/26/01
-- contains default settings for sound engine tunable variables
--


-- boolean defines
TRUE	= 1.0
FALSE	= 0.0


-- BitRate : 8bit/16bit resolution for audio mixer
BitRate		= 16

-- OutputChannels : 1(mono)/2(stereo) channel output for audio mixer
OutputChannels	= 2

-- SampleRate :  Maximum SampleRate of audio mixer (11025,22025,44100)
SampleRate	= 44100

-- Hardware 3D Provider List:
-- 	"Creative Labs EAX 2 (TM)"
--	"Creative Labs EAX (TM)"
-- 	"DirectSound3D Hardware Support"
--	"Aureal A3d 2.0(TM)"
--	"Aureal A3D Interactive (TM)"
ProviderHW3D	= "DirectSound3D Hardware Support"
ChannelsHW3D	= 16
ResChanHW3D	= 2

-- Software 3D Provider List:
-- 	"Miles Fast 2D Positional Audio"
-- 	"RAD Game Tools RSX 3d Audio"
--	"Dolby Surround"
--	"DirectSound3D Software Emulation"
--	"DirectSound3D 7+ Software - Full HRTF"
--	"DirectSound3D 7+ Software - Light HRTF"
--	"DirectSound3D 7+ Software - Pan and Volume"
ProviderSW3D	= "DirectSound3D Software Emulation"
ChannelsSW3D	= 16
ResChanSW3D	= 2

-- 2D Provider List
--	"Miles 2D"
Provider2D	= "Miles 2D"
Channels2D	= 8
ResChan2D	= 2

-- Streaming Provider List
--	"Miles Streaming"
ProviderSTRM	= "Miles Streaming"
ChannelsSTRM	= 6
ResChanSTRM	= 2


-- SoundDriver : NameTag of the Sound Driver DLL to use, currently only  -- "SEMILES" -- "DSS" 
SoundDriver = "SEMILES"

-- default filter to attach to each 2D based sample ("Reverb3 Filter" == emulates the EAX rooms for reverb settings)
DefaultFilter   = "Reverb3 Filter"

-- DefaultEnvType values are maped to eax room types:
-- SE_ENV_GENERIC		0 
-- SE_ENV_PADDEDCELL		1
-- SE_ENV_ROOM			2
-- SE_ENV_BATHROOM		3
-- SE_ENV_LIVINGROOM		4
-- SE_ENV_STONEROOM		5
-- SE_ENV_AUDITORIUM		6
-- SE_ENV_CONCERTHALL		7
-- SE_ENV_CAVE			8
-- SE_ENV_ARENA			9
-- SE_ENV_HANGAR		10
-- SE_ENV_CARPETEDHALLWAY	11
-- SE_ENV_HALLWAY		12
-- SE_ENV_STONECORRIDOR		13
-- SE_ENV_ALLEY			14
-- SE_ENV_FOREST		15
-- SE_ENV_CITY			16
-- SE_ENV_MOUNTAINS		17
-- SE_ENV_QUARRY		18
-- SE_ENV_PLAIN			19
-- SE_ENV_PARKINGLOT		20
-- SE_ENV_SEWERPIPE		21
-- SE_ENV_UNDERWATER		22
-- SE_ENV_DRUGGED		23
-- SE_ENV_DIZZY			24
-- SE_ENV_PSYCHOTIC		25
DefaultEnvType  = 18
