--------------------------------------------------------------
-- death match 
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
		{ "Data:audio/Speech/AllMissions/MALGM04Rex18.pat", 40720, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex19.pat", 40721, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex20.pat", 40722, CI_REX, 0 },
	}
	gametype_announce.start.pvcpu.taunt_1 = {
		-- taunt messages for player vs. CPU with un-allied enemies 
		{ "Data:audio/Speech/AllMissions/VSHchBDT01a.pat", 40725, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchBDT02a.pat", 40726, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchBDT03a.pat", 40727, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchBDT04a.pat", 40728, CI_HENCHMAN, 0 },
	}
	gametype_announce.start.pvcpu.taunt_many = {
		-- taunt messages for player vs. CPU with 2 or more enemies allied together 
		{ "Data:audio/Speech/AllMissions/VSHchBDT05a.pat", 40730, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchBDT06a.pat", 40731, CI_HENCHMAN, 0 },
		{ "Data:audio/Speech/AllMissions/VSHchBDT07a.pat", 40732, CI_HENCHMAN, 0 },
	}
	gametype_announce.start.pvcpu.support = {
		-- support messages for player vs. CPU with 1 or more AI allied with player
		{ "Data:audio/Speech/AllMissions/MALGM04Rex05.pat", 40665, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex06.pat", 40666, CI_REX, 0 },
		{ "Data:audio/Speech/AllMissions/MALGM04Rex07.pat", 40667, CI_REX, 0 },
	}

-- game-end-win announcement data
gametype_announce.win = clone( announceTab )
	gametype_announce.win.mp = {
		-- intro messages for MP games
	}
	gametype_announce.win.pvcpu.taunt_1 = {
		-- taunt messages for player vs. CPU with un-allied enemies 
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
	 return "Death Match"

end

-- initialize world for new games
function gametype_initrules()
	 
	-- set game objective
	objective_set( 40601 )

end

-- game rules
function gametype_dorules()

	local numPlayers = world_getplayercount()
	-- check for dead players, this is checking for when the player has no entity left
	local i=0
	while (i < numPlayers) do
		-- get player from world
		local playerId = world_getplayerat(i)
		-- tell the script what player we are going to ask questions about
		player_set(playerId)
		-- get the population
		pop = 0
		pop = pop + player_numoftypetotal( Lab_EC )
		pop = pop + player_numoftypetotal( ResourceRenew_EC )
		pop = pop + player_numoftypetotal( RemoteChamber_EC )
		pop = pop + player_numoftypetotal( WaterChamber_EC )
		pop = pop + player_numoftypetotal( Aviary_EC )
		pop = pop + player_numoftypetotal( ElectricGenerator_EC )
		pop = pop + player_numoftypetotal( VetClinic_EC )
		pop = pop + player_numoftypetotal( Foundry_EC )
		pop = pop + player_numoftypetotal( SoundBeamTower_EC )
		pop = pop + player_numoftypetotal( AntiAirTower_EC )
		pop = pop + player_numoftypetotal( LandingPad_EC )
		pop = pop + player_numoftypetotal( GeneticAmplifier_EC )
		if (pop == 0) then
			-- all gone...
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

