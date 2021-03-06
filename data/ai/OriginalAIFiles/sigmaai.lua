aitrace("Script: Starting AI");

-- table of all variables that need to be saved
AIG = {}

-- cache gameinfo options that AI will need
g_LOD = LevelOfDifficulty();
g_GameType = GetGameType();
g_GameMode = GetGameMode();

-- forces higher level of difficulty levels to hard
if (g_LOD > 2) then
	g_LOD = 2
end

-- Add any scripts specific to each level of AI (apparently none)
if (g_LOD == 0) then
	aitrace("Script: EasyAI Loading");
elseif (g_LOD == 1) then
	aitrace("Script: StandardAI Loading");
else
	aitrace("Script: HardAI Loading");
end

-- this is the AI file used in all levels
dofilepath("data:ai/aimain.lua");

-- EXTRA GAME MODES NOT SUPPORTED
--if (g_GameMode == GM_KillRex) then

	-- SetTargetTypePriority( Rex_EC, 100 )
	-- SetTargetTypePriority( Lab_EC, 80 )
--else
	
	-- SetTargetTypePriority( Lab_EC, 100 )
	-- SetTargetTypePriority( Creature_EC, 95 )
	
--end