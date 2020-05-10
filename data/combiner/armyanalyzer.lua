
AnalyzeArmy = function()

	true = 1
	false = 0

	rank1 = false
	rank2 = false
	rank3 = false
	rank4 = false
	rank5 = false

	-- movement types
	
	flyerFound = false
	landFound = false
	swimmerFound = false
	amphibFound = false
	amphibCount = 0
	
	-- New movement types for creature pack
	
	jumpFound = false

	-- special abilities
	rangeFound = false
	artilleryFound = false
	covertFound = false
	senseFound = false
	pierceFound = false
	immuneFound = false
	barrierFound = false

	--New Abilities for Creature pack

	packherdFound = false
	webFound = false
        --autoFound = false
	asslonerFound = false

	-- creature cost, rank, and attribute totals
	totalElec = 0
	totalCoal = 0
	totalRank = 0
	totalRank1 = 0
	totalRank2 = 0
	totalRank3 = 0
	totalRank4 = 0
	totalRank5 = 0
	totalLowRank = 0
	totalHighRank = 0
	totalSpeed = 0
	totalDefense = 0
	totalMelee = 0
	totalChemical = 0
	totalPower = 0
	totalCreatureSpeedCount = 0
	
	-- Melee and Range Assessment
	meleeLowRank = false
	meleeAvgRank = false
	meleeHighRank = false
	rangeLowRank = false
	rangeAvgRank = false
	rangeHighRank = false
	artLowRank = false
	artAvgRank = false
	artHighRank = false
	
	-- Number of creatures in army
	creatureCount = GetArmyCreatureCount()
	totalCreatureSpeedCount = GetArmyCreatureCount()
	for index = 0, creatureCount - 1
	do

		creatureID = GetArmyCreatureID( index)

		-- Creature Costs, rank, and attributes
		totalCoal = totalCoal + GetCreatureAttrib( creatureID, "cost")
		totalElec = totalElec + GetCreatureAttrib( creatureID, "costrenew")
		totalSpeed = totalSpeed + GetCreatureAttrib( creatureID, "speed_max")
		totalSpeed = totalSpeed + GetCreatureAttrib( creatureID, "waterspeed_max")
		totalSpeed = totalSpeed + GetCreatureAttrib( creatureID, "airspeed_max")
		totalDefense = totalDefense + GetCreatureAttrib( creatureID, "armour")
		totalMelee = totalMelee + GetCreatureAttrib( creatureID, "melee_damage")
		
		-- check rank
		rank = GetCreatureAttrib( creatureID, "creature_rank")
		if (rank == 1) then
			rank1 = true
			totalRank = totalRank + 1
			totalRank1 = totalRank1 + 1
			totalLowRank = totalLowRank + 1
		end
		if (rank == 2) then
			rank2 = true
			totalRank = totalRank + 2
			totalRank2 = totalRank2 + 1
			totalLowRank = totalLowRank + 1
		end
		if (rank == 3) then
			rank3 = true
			totalRank = totalRank + 3
			totalRank3 = totalRank3 + 1
		end
		if (rank == 4) then
			rank4 = true
			totalRank = totalRank + 4
			totalRank4 = totalRank4 + 1
			totalHighRank = totalHighRank + 1
		end
		if (rank == 5) then
			rank5 = true
			totalRank = totalRank + 5
			totalRank5 = totalRank5 + 1
			totalHighRank = totalHighRank + 1
		end

		-- check movement types
		if (GetCreatureAttrib( creatureID, "is_flyer") == 1) then
			flyerFound = true
		end
		if (GetCreatureAttrib( creatureID, "is_land") == 1) then
			landFound = true
		end
		if (GetCreatureAttrib( creatureID, "is_swimmer") == 1) and
			(GetCreatureAttrib( creatureID, "is_land") == 1) then
				amphibFound = true
				amphibCount = amphibCount + 1
		end
		if (GetCreatureAttrib( creatureID, "is_swimmer") == 1) and
			(GetCreatureAttrib( creatureID, "is_land") == 0) then
				swimmerFound = true
		end
	
		-->>>>>>>>>>New movement types for Creature Pack

		if (GetCreatureAttrib( creatureID, "can_SRF") == 1) then
			jumpFound = true
		end

		-- check special abilities
		if (GetCreatureAttrib( creatureID, "can_dig") == 1 or GetCreatureAttrib( creatureID, "is_stealthy") == 1) then
			covertFound = true
		end
		if (GetCreatureAttrib( creatureID, "keen_sense") == 1 or GetCreatureAttrib( creatureID, "sonar_pulse") == 1) then
			senseFound = true
		end
		if (GetCreatureAttrib( creatureID, "is_immune") == 1) then
			immuneFound = true
		end
		local range_dmgtype = GetCreatureAttrib(creatureID, "range_dmgtype")
		if (math_and( range_dmgtype, DT_VenomSpray ) == DT_VenomSpray) then
			totalChemical = totalChemical + 1
		end
		local melee_dmgtype = GetCreatureAttrib(creatureID, "melee_dmgtype")
		if (math_and( melee_dmgtype , DT_Poison ) == DT_Poison) then
			totalChemical = totalChemical + 1
		end
		if (GetCreatureAttrib( creatureID, "stink_attack") == 1) then
			totalChemical = totalChemical + 1
		end
		if (GetCreatureAttrib( creatureID, "plague_attack") == 1) then
			totalChemical = totalChemical + 1
		end
		if (GetCreatureAttrib( creatureID, "poison_touch") == 1) then
			totalChemical = totalChemical + 1
		end
                if (GetCreatureAttrib( creatureID, "soiled_land") == 1) then
			totalChemical = totalChemical + 1
		end
		-->>>>>>>>>>>New abilities for Creature Pack
		if (GetCreatureAttrib( creatureID, "pack_hunter") == 1 or GetCreatureAttrib( creatureID, "herding") == 1 or GetCreatureAttrib( creatureID, "AutoDefense") == 1) then
			packherdFound = true
		end
		if (GetCreatureAttrib( creatureID, "web_throw") == 1) then
			webFound = true
		end
                --if (GetCreatureAttrib( creatureID, "AutoDefense") == 1) then
		--	autoFound = true
		--end  
		if (GetCreatureAttrib( creatureID, "deflection_armour") == 1) then
			artilleryFound = true
		end
                if (GetCreatureAttrib( creatureID, "flash") == 1) then
			artilleryFound = true
		end       
                if (GetCreatureAttrib( creatureID, "assassinate") == 1 or GetCreatureAttrib( creatureID, "loner") == 1) then
			asslonerFound = true
		end
		-- Check for Piercing abilities
		local melee_dmgtype = GetCreatureAttrib(creatureID, "melee_dmgtype")
		if (math_and( melee_dmgtype , DT_HornNegateArmour ) == DT_HornNegateArmour) then
			pierceFound = true
		end
		local range_dmgtype = GetCreatureAttrib(creatureID,"range_dmgtype")
		if (math_and( range_dmgtype, DT_HornNegateArmour ) == DT_HornNegateArmour) then
			pierceFound = true
		end
		if (GetCreatureAttrib( creatureID, "quill_burst") == 1) then
			pierceFound = true
		end


		-- Check for Barrier Destroy abilities
		local melee_dmgtype = GetCreatureAttrib(creatureID, "melee_dmgtype")
		if (math_and( melee_dmgtype , DT_BarrierDestroy ) == DT_BarrierDestroy) or (GetCreatureAttrib( creatureID, "infestation") == 1) then
			barrierFound = true
		end
		
		
		-- check ranged and artillery
		if (GetCreatureAttrib( creatureID, "range2_damage") > 0) then
			if (GetCreatureAttrib( creatureID, "range2_special") > 0) then
				artilleryFound = true
			else
				rangeFound = true
			end
		end
		if (GetCreatureAttrib( creatureID, "range4_damage") > 0) then
			if (GetCreatureAttrib( creatureID, "range4_special") > 0) then
				artilleryFound = true
			else
				rangeFound = true
			end
		end
		if (GetCreatureAttrib( creatureID, "range5_damage") > 0) then
			if (GetCreatureAttrib( creatureID, "range5_special") > 0) then
				artilleryFound = true
			else
				rangeFound = true
			end
                end

		-- melee damage assessment
		if (rank == 1) and
		(GetCreatureAttrib( creatureID, "melee_damage") > 4) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 50) then
			meleeLowRank = true
		end
		if (rank == 2) and
		(GetCreatureAttrib( creatureID, "melee_damage") > 6) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 65) then
			meleeLowRank = true
		end
		if (rank == 3) and
		(GetCreatureAttrib( creatureID, "melee_damage") > 10) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 100) then
			meleeAvgRank = true
		end
		if (rank == 4) and
		(GetCreatureAttrib( creatureID, "melee_damage") > 14) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 180) then
			meleeHighRank = true
		end
		if (rank == 5) and
		(GetCreatureAttrib( creatureID, "melee_damage") > 19) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 225) then
			meleeHighRank = true
		end

		-- range damage assessment
		if (rank == 1) and
		(GetCreatureAttrib( creatureID, "range2_damage") > 3) and
		(GetCreatureAttrib( creatureID, "range2_special") < 1) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 40) then
			rangeLowRank = true
		end
		if (rank == 1) and
		(GetCreatureAttrib( creatureID, "range4_damage") > 3) and
		(GetCreatureAttrib( creatureID, "range4_special") < 1) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 40) then
			rangeLowRank = true
		end
		if (rank == 2) and
		(GetCreatureAttrib( creatureID, "range2_damage") > 4) and
		(GetCreatureAttrib( creatureID, "range2_special") < 1) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 75) then
			rangeLowRank = true
		end
		if (rank == 2) and
		(GetCreatureAttrib( creatureID, "range4_damage") > 4) and
		(GetCreatureAttrib( creatureID, "range4_special") < 1) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 75) then
			rangeLowRank = true
		end
		if (rank == 3) and
		(GetCreatureAttrib( creatureID, "range2_damage") > 7) and
		(GetCreatureAttrib( creatureID, "range2_special") < 1) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 120) then
			rangeAvgRank = true
		end
		if (rank == 3) and
		(GetCreatureAttrib( creatureID, "range4_damage") > 7) and
		(GetCreatureAttrib( creatureID, "range4_special") < 1) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 120) then
			rangeAvgRank = true
		end
		if (rank == 4) and
		(GetCreatureAttrib( creatureID, "range2_damage") > 10) and
		(GetCreatureAttrib( creatureID, "range2_special") < 1) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 190) then
			rangeHighRank = true
		end
		if (rank == 4) and
		(GetCreatureAttrib( creatureID, "range4_damage") > 10) and
		(GetCreatureAttrib( creatureID, "range4_special") < 1) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 190) then
			rangeHighRank = true
		end
		if (rank == 5) and
		(GetCreatureAttrib( creatureID, "range2_damage") > 17) and
		(GetCreatureAttrib( creatureID, "range2_special") < 1) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 250) then
			rangeHighRank = true
		end
		if (rank == 5) and
		(GetCreatureAttrib( creatureID, "range4_damage") > 17) and
		(GetCreatureAttrib( creatureID, "range4_special") < 1) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 250) then
			rangeHighRank = true
		end

		-- artillery damage assessment
		if (rank == 1) and
		(GetCreatureAttrib( creatureID, "range2_damage") > 3) and
		(GetCreatureAttrib( creatureID, "range2_special") > 0) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 40) then
			artLowRank = true
		end
		if (rank == 1) and
		(GetCreatureAttrib( creatureID, "range4_damage") > 3) and
		(GetCreatureAttrib( creatureID, "range4_special") > 0) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 40) then
			artLowRank = true
		end
		if (rank == 2) and
		(GetCreatureAttrib( creatureID, "range2_damage") > 3) and
		(GetCreatureAttrib( creatureID, "range2_special") > 0) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 75) then
			artLowRank = true
		end
		if (rank == 2) and
		(GetCreatureAttrib( creatureID, "range4_damage") > 3) and
		(GetCreatureAttrib( creatureID, "range4_special") > 0) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 75) then
			artLowRank = true
		end
		if (rank == 3) and
		(GetCreatureAttrib( creatureID, "range2_damage") > 5) and
		(GetCreatureAttrib( creatureID, "range2_special") > 0) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 120) then
			artAvgRank = true
		end
		if (rank == 3) and
		(GetCreatureAttrib( creatureID, "range4_damage") > 5) and
		(GetCreatureAttrib( creatureID, "range4_special") > 0) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 120) then
			artAvgRank = true
		end
		if (rank == 4) and
		(GetCreatureAttrib( creatureID, "range2_damage") > 7) and
		(GetCreatureAttrib( creatureID, "range2_special") > 0) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 190) then
			artHighRank = true
		end
		if (rank == 4) and
		(GetCreatureAttrib( creatureID, "range4_damage") > 7) and
		(GetCreatureAttrib( creatureID, "range4_special") > 0) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 190) then
			artHighRank = true
		end
		if (rank == 5) and
		(GetCreatureAttrib( creatureID, "range2_damage") > 9) and
		(GetCreatureAttrib( creatureID, "range2_special") > 0) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 250) then
			artHighRank = true
		end
		if (rank == 5) and
		(GetCreatureAttrib( creatureID, "range4_damage") > 9) and
		(GetCreatureAttrib( creatureID, "range4_special") > 0) and
		(GetCreatureAttrib( creatureID, "hitpoints") > 250) then
			artHighRank = true
		end

	end


	-- Trying out the power rating
		hitpoints = GetCreatureAttrib( creatureID, "hitpoints" );
		armour = GetCreatureAttrib( creatureID, "armour" );
		sight_radius1 = GetCreatureAttrib( creatureID, "sight_radius1" );

		rangeCostModifier = 1.35;

		damagem = GetCreatureAttrib( creatureID, "melee_damage" );
		damage2 = GetCreatureAttrib( creatureID, "range2_damage" );
		damage2rank = damage2 * rangeCostModifier;
		damage4 = GetCreatureAttrib( creatureID, "range4_damage" );
		damage4rank = damage4 * rangeCostModifier;
		damage = max( damagem, max( damage2, damage4 ) );
		damage_rank = max( damagem, max( damage2rank, damage4rank ) );	


		speed_max = GetCreatureAttrib( creatureID, "speed_max" );
		airspeed_max = GetCreatureAttrib( creatureID, "airspeed_max" );
		waterspeed_max = GetCreatureAttrib( creatureID, "waterspeed_max" );
		-- Charging only for the max speed.  Electric cost can be added to flyers/swimmers to account for them having multiple modes of transportation
		speed = max( speed_max, max( airspeed_max, waterspeed_max ) );

		-- Power of the creature.  Used to rank it.
		power = sqrt( damage_rank * hitpoints / ( 1-armour ) );

		-- adding up power values

		-- rank 1
		if (rank == 1) and (power >= 24.5) then
			totalPower = totalPower + 5
		end
		if (rank == 1) and (power >= 19 and power <= 24.4) then
			totalPower = totalPower + 4
		end
		if (rank == 1) and (power >= 12 and power <= 18.9) then
			totalPower = totalPower + 3
		end
		if (rank == 1) and (power >= 6 and power <= 11.9) then
			totalPower = totalPower + 2
		end
		if (rank == 1) and (power >= 3 and power <= 5.9) then
			totalPower = totalPower + 1
		end
		
		-- rank 2
		if (rank == 2) and (power >= 37) then
			totalPower = totalPower + 5
		end
		if (rank == 2) and (power >= 35 and power <= 36.9) then
			totalPower = totalPower + 4
		end
		if (rank == 2) and (power >= 32 and power <= 34.9) then
			totalPower = totalPower + 3
		end
		if (rank == 2) and (power >= 30 and power <= 31.9) then
			totalPower = totalPower + 2
		end
		if (rank == 2) and (power >= 28 and power <= 29.9) then
			totalPower = totalPower + 1
		end

		-- rank 3
		if (rank == 3) and (power >= 54) then
			totalPower = totalPower + 5
		end
		if (rank == 3) and (power >= 51 and power <= 53.9) then
			totalPower = totalPower + 4
		end
		if (rank == 3) and (power >= 47 and power <= 50.9) then
			totalPower = totalPower + 3
		end
		if (rank == 3) and (power >= 43 and power <= 46.9) then
			totalPower = totalPower + 2
		end
		if (rank == 3) and (power >= 41 and power <= 42.9) then
			totalPower = totalPower + 1
		end

		-- rank 4
		if (rank == 4) and (power >= 96) then
			totalPower = totalPower + 5
		end
		if (rank == 4) and (power >= 88 and power <= 95.9) then
			totalPower = totalPower + 4
		end
		if (rank == 4) and (power >= 75 and power <= 87.9) then
			totalPower = totalPower + 3
		end
		if (rank == 4) and (power >= 66 and power <= 74.9) then
			totalPower = totalPower + 2
		end
		if (rank == 4) and (power >= 59 and power <= 65.9) then
			totalPower = totalPower + 1
		end

		-- rank 5
		if (rank == 5) and (power >= 300) then
			totalPower = totalPower + 5
		end
		if (rank == 5) and (power >= 230 and power <= 299.9) then
			totalPower = totalPower + 4
		end
		if (rank == 5) and (power >= 180 and power <= 229.9) then
			totalPower = totalPower + 3
		end
		if (rank == 5) and (power >= 140 and power <= 179.9) then
			totalPower = totalPower + 2
		end
		if (rank == 5) and (power >= 115 and power <= 139.9) then
			totalPower = totalPower + 1
		end


	
	-- Creatures in Army?
	if (creatureCount == 0) then
		AddItem(56100)
	else

		-- Defining Average Costs, Rank, and attributes
		totalCreatureSpeedCount = creatureCount + amphibCount
		avgCoal = totalCoal / creatureCount
		avgElec = totalElec / creatureCount
		avgRank = totalRank / creatureCount
		avgSpeed = totalSpeed / totalCreatureSpeedCount
		avgDefense = totalDefense / creatureCount
		avgMelee = totalMelee / creatureCount
		avgPower = totalPower / creatureCount


		-- Average Coal Cost
		if (avgCoal > 250) then
			AddItem( 56102)
		elseif (avgCoal < 150) then
			AddItem( 56104)
		else
			AddItem( 56106)
		end
	
		-- Average Electricity Cost
		if (avgElec > 100) then
			AddItem( 56108)
		elseif (avgElec < 50) then
			AddItem( 56110)
		else
			AddItem( 56112)
		end

		-- Research Level Distribution
		if (avgRank < 2.5) then
			AddItem( 56114)
		elseif (avgRank > 3.2) then
			AddItem( 56116)
		else
			AddItem( 56118)
		end
		
		-- Requirements
		if (swimmerFound == true) or (amphibFound == true) and
		(flyerFound == false) then
			AddItem( 56120)
		end
		if (swimmerFound == false) and (amphibFound == false) then
			if (flyerFound == true) then
				AddItem( 56122)
			end
		end
		if (swimmerFound == true) or (amphibFound == true) and
		(flyerFound == true) then
			AddItem( 56124)
		end

		-- Speed Assessment
		if (avgSpeed > 27) then
			AddItem( 56144)
		elseif (avgSpeed < 20) then
			AddItem( 56146)
		else
			AddItem( 56148)
		end

		-- Defense Assessment
		if (avgDefense > 0.50) then
			AddItem( 56150)
		elseif (avgDefense < 0.35) then
			AddItem( 56152)
		else
			AddItem( 56154)
		end

		-- Melee Assessment
		if (avgMelee > 18) then
			AddProItem( 56156)
		elseif (avgMelee < 9) then
			AddConItem( 56158)
		end



		-- Melee Damage Assessment by rank
		if (meleeLowRank == true) then
			AddItem( 56126)
		end
		if (meleeAvgRank == true) then
			AddItem( 56128)
		end
		if (meleeHighRank == true) then
			AddItem( 56130)
		end

		-- Range Damage Assessment by rank
		if (rangeLowRank == true) then
			AddItem( 56132)
		end
		if (rangeAvgRank == true) then
			AddItem( 56134)
		end
		if (rangeHighRank == true) then
			AddItem( 56136)
		end

		-- Artillery Damage Assessment by rank
		if (artLowRank == true) then
			AddItem( 56138)
		end
		if (artAvgRank == true) then
			AddItem( 56140)
		end
		if (artHighRank == true) then
			AddItem( 56142)
		end

		-- What ranks are strong?
		if (totalRank1 > 2) then
			AddItem( 56166)
		end
		if (totalRank2 > 2) then
			AddItem( 56168)
		end
		if (totalRank3 > 2) then
			AddItem( 56170)
		end
		if (totalRank4 > 2) then
			AddItem( 56172)
		end
		if (totalRank5 > 2) then
			AddItem( 56174)
		end



		-- rank 1 creatures present?
		if (rank1 == true) then
			AddProItem( 56010)
		else
			AddConItem( 56012)
		end
	
		-- rank 2 creatures present?
		if (rank2 == true) then
			AddProItem( 56014)
		else
			AddConItem( 56016)
		end
	
		-- rank 3 creatures present?
		if (rank3 == true) then
			AddProItem( 56018)
		else
			AddConItem( 56020)
		end
	
		-- rank 4 creatures present?
		if (rank4 == true) then
			AddProItem( 56022)
		else
			AddConItem( 56024)
		end
	
		-- rank 5 creatures present?
		if (rank5 == true) then
			AddProItem( 56026)
		else
			AddConItem( 56028)
		end
	
	
		-- too many of a rank?
		if (totalLowRank > 4) then
			AddConItem( 56176)
		end
		if (totalHighRank > 3) then
			AddConItem( 56178)
		end
		if (totalRank1 > 4) then
			AddConItem( 56180)
		end
		if (totalRank2 > 4) then
			AddConItem( 56182)
		end
		if (totalRank3 > 4) then
			AddConItem( 56184)
		end
		if (totalRank4 > 4) then
			AddConItem( 56186)
		end
		if (totalRank5 > 4) then
			AddConItem( 56188)
		end


		-- check movement types
		if (flyerFound == true) then
			AddProItem( 56030)
		else
			AddConItem( 56032)
		end
	
		if (landFound == false) then
			AddConItem( 56036)
		end
	
		if (amphibFound == false) then
			AddConItem( 56044)
		end
	
	
		-- special abilities
		if (pierceFound == true) then
			AddProItem( 56220)
		else
			AddConItem( 56222)
		end
		
		if (rangeFound == true) then
			AddProItem( 56046)
		else
			AddConItem( 56048)
		end
	
		if (artilleryFound == true) then
			AddProItem( 56058)
		else
			AddConItem( 56060)
		end

		if (immuneFound == true) then
			AddProItem( 56160)
		else
			AddConItem( 56162)
		end

		if (totalChemical > 2) then
			AddConItem( 56164)
		end

		if (covertFound == true) then
			AddProItem( 56050)
		else
			AddConItem( 56052)
		end
	
		if (barrierFound == true) then
			AddProItem( 56224)
		else
			AddConItem( 56226)
		end

		if (senseFound == true) then
			AddProItem( 56054)
		else
			AddConItem( 56056)
		end
		-->>>>>>>New abilities
		if (jumpFound == true) then
			AddProItem( 56228)
		else
			AddConItem( 56230)
		end

		if (packherdFound == true) then
			AddProItem( 56232)
		else
			AddConItem( 56234)
		end
                if (webFound == true) then
			AddProItem( 56236)
		else
			AddConItem( 56238)
		end
		--if (autoFound == true) then
		--	AddProItem( 30232)
		--else
		--	AddConItem( 30233)
		--end
		if (asslonerFound == true) then
			AddProItem(56240)
		else
			AddConItem(56242)
		end	
	end

end
