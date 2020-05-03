--------------------------------------------------------------
-- kill rex
--------------------------------------------------------------

-- import common functions
dofilepath("Data:GameTypes/gameover.lua")
dofilepath("Data:GameTypes/objective.lua")
dofilepath("Data:GameTypes/util.lua")
dofilepath("Data:GameTypes/announce.lua")
dofilepath("Data:defcharacters.lua")

--------------------------------------------------------------
-- announed gamemode data
gametype_announce = {}

-- game-start announcement data
gametype_announce.start = clone( announceTab )
	gametype_announce.start.mp = {
		-- intro messages for MP games
		{ "Data:audio/Speech/AllMissions/MALGM04Rex14.pat", 40700, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex15.pat", 40701, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex16.pat", 40702, CI_REX, 0 },
	}
	gametype_announce.start.pvcpu.taunt_1 = {
		-- taunt messages for player vs. CPU with un-allied enemies 
		{ "Data:audio/Speech/AllMissions/VSHchKRT01a.pat", 40705, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchKRT02a.pat", 40706, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchKRT03a.pat", 40707, CI_HENCHMAN, 0 },
	}
	gametype_announce.start.pvcpu.taunt_many = {
		-- taunt messages for player vs. CPU with 2 or more enemies allied together 
		{ "Data:audio/Speech/AllMissions/VSHchKRT04a.pat", 40710, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchKRT05a.pat", 40711, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchKRT06a.pat", 40712, CI_HENCHMAN, 0 },
	}
	gametype_announce.start.pvcpu.support = {
		-- support messages for player vs. CPU with 1 or more AI allied with player
		{ "Data:audio/Speech/AllMissions/MALGM04Rex05.pat", 40665, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex06.pat", 40666, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex07.pat", 40667, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex17.pat", 40715, CI_REX, 0 },
	}

-- game-end-win announcement data
gametype_announce.win = clone( announceTab )
	gametype_announce.win.mp = {
		-- intro messages for MP games
	}
	gametype_announce.win.pvcpu.taunt_1 = {
		-- taunt messages for player vs. CPU with un-allied enemies 
		{ "Data:audio/Speech/AllMissions/VSHchKRT07a.pat", 40716, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchWin01a.pat", 40670, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchWin02a.pat", 40671, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchWin03a.pat", 40672, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchWin04a.pat", 40673, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchWin05a.pat", 40674, CI_HENCHMAN, 0 },
	}
	gametype_announce.win.pvcpu.taunt_many = {
		-- taunt messages for player vs. CPU with 2 or more enemies allied together 
		{ "Data:audio/Speech/AllMissions/VSHchWin06a.pat", 40675, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchWin07a.pat", 40676, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchWin07a.pat", 40677, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchWin09a.pat", 40678, CI_HENCHMAN, 0 },
	}
	gametype_announce.win.pvcpu.support = {
		-- support messages for player vs. CPU with 1 or more AI allied with player
		{ "Data:audio/Speech/AllMissions/MALGM04Rex08.pat", 40680, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex09.pat", 40681, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex10.pat", 40682, CI_REX, 0 },
	}
	
-- game-end-lose announcement data
gametype_announce.lose = clone( announceTab )
	gametype_announce.lose.mp = {
		-- intro messages for MP games
	}
	gametype_announce.lose.pvcpu.taunt_1 = {
		-- taunt messages for player vs. CPU with un-allied enemies 
		{ "Data:audio/Speech/AllMissions/VSHchLos01a.pat", 40685, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchLos02a.pat", 40686, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchLos03a.pat", 40687, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchLos04a.pat", 40688, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchLos05a.pat", 40689, CI_HENCHMAN, 0 },
	}
	gametype_announce.lose.pvcpu.taunt_many = {
		-- taunt messages for player vs. CPU with 2 or more enemies allied together 
		{ "Data:audio/Speech/AllMissions/VSHchLos06a.pat", 40690, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchLos07a.pat", 40691, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchLos08a.pat", 40692, CI_HENCHMAN, 0 },
	}
	gametype_announce.lose.pvcpu.support = {
		-- support messages for player vs. CPU with 1 or more AI allied with player
		{ "Data:audio/Speech/AllMissions/MALGM04Rex11.pat", 40695, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex12.pat", 40696, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex13.pat", 40697, CI_REX, 0 },
	}

--------------------------------------------------------------

-- retrieve the UI name of this game type
function gametype_getname()

	 -- to be replaced with localized string reference
	 return "Regecide"

end

-- initialize world for new games
function gametype_initrules()
	 
	-- ensure that each player that has a lab also has an instance of Rex
	local numPlayers = world_getplayercount()
	local i=0
	while (i < numPlayers) do
		-- get player from world
		local playerId = world_getplayerat(i)
		-- tell the script what player we are going to ask questions about
		player_set(playerId)
		-- get the lab entities
		labgroup = player_getgroup( Lab_EC )
		-- ignore players with no lab
		if (eg_size(labgroup) > 0) then
			-- make sure that the player has exactly one instance of Rex
			player_setpopulation( Rex_EC, 1 )

			-- prevent Rex from being garrisoned
			rexgroup = player_getgroup( Rex_EC )
			rex      = eg_getentity( rexgroup, 0 )
			ent_blockgarrison( rex, 1 );

		end
		-- go to check next player
		i = i+1
	end

	-- set game objective
	objective_set( 40602 )

end

-- game rules
function gametype_dorules()

	local numPlayers = world_getplayercount()
	-- check for dead players, this is checking for when the player has no Rex
	local i=0
	while (i < numPlayers) do
		-- get player from world
		local playerId = world_getplayerat(i)
		-- tell the script what player we are going to ask questions about
		player_set(playerId)
		-- get the Rex entities
		rexgroup = player_getgroup( Rex_EC )
		-- if player has no Rex then they are dead, check to see if this group is empty
		if (eg_size(rexgroup) == 0) then
			-- if no rex then kill this player
			player_kill()
		end
		-- go to check next player
		i = i+1
	end

	-- check for game over condition
	if ( isgameover() == 1 ) then
		world_setgameover();
	end	

end

