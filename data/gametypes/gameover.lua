--------------------------------------------------------------
-- game over
--------------------------------------------------------------

-- the game is over when all the enemies are dead

function isgameover()

	local gameover = 1
	local numPlayers = world_getplayercount()
	local numEnemies = 0
	-- if all your enemies are dead then you win
	i=0
	while (i < numPlayers) do
		-- get player from world
		local playerId = world_getplayerat(i)
		-- tell the script what player we are going to ask questions about
		player_set(playerId)

		-- only check live players
		if (player_isdead() == 0) then
		
			-- check all the enemies of this playerId
		
			-- insert alliance check here (similar to ME trigger check)
			j = 0
			while (j<numPlayers) do
				local otherPlayerId = world_getplayerat(j)
				-- check for self
				if (playerId ~= otherPlayerId ) then
					-- if this player is an enemy but isn't dead then do nothing, the game is still on
					if (player_isally(otherPlayerId) == 0) then
						 -- set this enemy so we can check it
						 player_set(otherPlayerId)
						 -- check to see if this enemy is dead
						 if (player_isdead(otherPlayerId) == 0) then
							-- set game over flag off
							gameover = 0
						else
							-- this enemy is alive
							numEnemies = numEnemies + 1
						end
						-- set the first player back
						player_set(playerId)
					end
				end
	
				j = j+1
			end

		end
	
		i = i+1
	end

	-- the game is not over if all the players that are still alive are all 
	-- allied with each other
	if  (numEnemies == 0) then
		gameover = 0
	end
	
	return gameover

end