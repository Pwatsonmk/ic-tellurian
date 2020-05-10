-------------------------------------------------------------------------------
-- SoundConfig.lua --
-- created by salfreds, 05/03/01
-- contains default settings for sound engine tunable variables
--

-- boolean defines
TRUE	= 1.0
FALSE	= 0.0


-- ClickVol: float 0.0 - 1.0, sets the volume of the button click sounds
ClickVol = 0.2

-- FEmusicVol: float 0.0 - 1.0, sets the volume of the front end music
FEmusicVol = 1.0

-- GameMusicVol: float 0.0 - 1.0, sets the max volume for music in the game (when zoomed out at the furthest distance)
GameMusicVol = 1.0

-- MinMusicVol: float 0.0 - 1.0, sets the minimum volume that music will play at when zoomed in to the action
MinMusicVol = 0.4

-- MusicFadeTime: float, # of seconds to fade from last volume to new volume (when zooming in or out from the action. not when cross fading between different tracks)
MusicFadeTime = 2.0

-- MusicDistance: int, distance in meters from the nearest entity to start fading the volume down from GameMusicVol
MusicDistance = 94

-- MusicCrossFadeTime: float, # of seconds for the cross fade to take when switching between level and battle tracks.
MusicCrossFadeTime = 2.0

-- MusicFadeToStingerTime: float, # of seconds to fade from music (level or battle) before starting the stinger.  Stinger does not fade out when it ends.
MusicFadeToStingerTime = 0.5

-- EnableAmbient: boolean, enables ambient sound emmiters that are set in the mission editor
EnableAmbient = TRUE

-- EnableMusic: boolean, enables music in the game
EnableMusic = TRUE

-- BattleTrack: string, temporary means of naming the battle track to use (in all levels)
BattleTrack = "ArcticBattle1.pat";

-- BattleTimeout: float, # of seconds to wait after a battle is "over" before switching back to the ambient track (in case a new battle starts up in that time)
BattleTimeout = 4.0

-- BattleStartCount: int, # of attacking units required to trigger the battle track (both sides)
BattleStartCount = 5

-- BattleEndCount: int, # of attacking units left to be below before shutting off the battle track
BattleEndCount = 1

-- MaxAmbients: int, max # of looping ambient sounds to play at the same time (nearest to furthest)
MaxAmbients = 8

-- FileAliasMode: 1 = read only, 2 write only, 3 support both
FileAliasMode = 1

-- SpeechQueueTimeout: float, # of seconds that queued speech events will stay in the queue
SpeechQueueTimeout = 5.0

-- SpeechQueueInterruptPriority: int, set for what priority level you want to have interrupt currently playing speech events, 100 is max, 1 is min.  Example: setting to 100, events with priority of 100 will interrupt any events with priority 99 or lower.  Setting to 90, events with priority 90 to 100 will never be interrupted, but will interrupt events with priority 89 or lower.
SpeechQueueInterruptPriority = 100

-- HWListenerPercentage: float, when camera is looking straigth down, this is the % of the height of the camera that the HW listener will be at.
HWListenerPercentage = 0.25
