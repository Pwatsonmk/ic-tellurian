-- attrCombiner.lua
----------------------------------------------------------------
-- This file processes creature attributes for each combined creature.  It...
--	boundary-checks and fixes numerical attributes
--	computes cost and rank based on attributes and abilities
--	determines the rankings of attributes
--	sets the ui display values
----------------------------------------------------------------

function combine_creature()

-- This needs to be solved in a better way. **SPECIAL CASE FOR SNAKE/SWIMMER COMBO BUG**
if 	getgameattribute("speed_max") == 0 and
	getgameattribute("waterspeed_max") == 0 and
	getgameattribute("airspeed_max") == 0 then
	setgameattribute("speed_max",8.0)
end

-- Give Flyers minimum sight radius

if ( getgameattribute("is_flyer") == 1 ) and
	( getgameattribute("sight_radius1") < 25 ) then
	setgameattribute("sight_radius1",25.0)
end


-- Checks to see if creature has defense equal or higher than 75
function has_high_defense() 

	if (getgameattribute("armour")>0.74) then
		return 1
	else
		return 0
	end
end

-- Checks to see if creature has defense equal or higher than 85
function has_really_high_defense() 

	if (getgameattribute("armour")>0.84) then
		return 1
	else
		return 0
	end
end

	
-- These variables will be updated throughout the file.

-- Total renewable resource cost of creature.
CostRenew = 0;
-- Total gatherable resource cost of creature.
CostGather = 0;
-- Final rank of creature.  0 = I, 1 = II, 2 = III, 3 = IV, 4 = V
CreatureRank = 0;
-- Minimum rank of creature, based on abilities.
MinRank = 0;


----------------------------------------------------------------
-- Utility functions.
----------------------------------------------------------------

-- Set the game and ui attribute.
function setattribute( attribute_string, value )
	setgameattribute(attribute_string,value);
	setuiattribute(attribute_string,value);
end

-- Find the first index i in an array of ascending values rank_upper_bounds for which x <= rank_upper_bounds[i].
-- i.e. find the "rank" of the value x in the rank array.
-- parameters:
--	x - a number to find the rank of
--	rank_upper_bounds - an array of nondescending upper bounds for each rank
-- returns:
--	the rank of x, i.e. the first index i such that x <= rank_upper_bounds[i], starting from i = 1
--	if there is no such i, returns one more than the number of contiguous non-nil elements starting from 1 in the array.
function Rank( x, rank_upper_bounds )
	-- Find where x falls in the array of ranges.
	local i = 1;
	while rank_upper_bounds[i] do
		if x <= rank_upper_bounds[i] then
			return i;
		end
		i = i + 1;
	end
	return i;
end

----------------------------------------------------------------
-- Attribute Bound Check and Rating
----------------------------------------------------------------

-- Attribute data.

-- Column ids.
AT_Name = 1;
AT_ZeroOK = 2;
AT_Min = 3;
AT_Max = 4;
AT_RankList = 5;
AT_UIName = 6;
AT_UIScale = 7;

-- Game attribute bound and rank data.
AttributeData =
{
-- { attribute name, zero ok, min, max, rank list, ui attribute name, game->ui scale factor }

	{ "hitpoints",  nil, 1, 2000, {0.0, 90.0, 160.0, 240.0}, "health", 1 },
	{ "armour", 1, 0, 0.9, {0.0, 0.15, 0.20, 0.35}, "armour", 100 },
	{ "speed_max", 1, 8, 50, {0.0, 25.0, 35.0, 45.0}, "landspeed", 1 },
	{ "waterspeed_max", 1, 8, 40, {0.0, 4.0, 6.0, 8.5}, "waterspeed", 1 },
	{ "airspeed_max", 1, 8, 50, {0.0, 5.0, 15.0, 20.0}, "airspeed", 1 },
	{ "sight_radius1", nil, 10, 1000, {0.0, 25.0, 35.0, 45.0}, "sightradius", 1 },
	{ "size", nil, 1, 10, {0, 3, 6, 9}, "size", 1 },

	{ "melee_damage", 1, 0, 1000, {0.0, 5.0, 9.0, 11.5}, "damage", 1 },
	--{ "range2_damage", 1, 0, 1000, {0.0, 1.0, 2.0, 3.0}, "range2_damage", 1 },
	--{ "range4_damage", 1, 0, 1000, {0.0, 1.0, 2.0, 3.0}, "range4_damage", 1 },
	{ "range2_max", 1, 0, 35, {0.0, 5.0, 9.0, 16.0}, "range2_max", 1 },
	{ "range4_max", 1, 0, 35, {0.0, 5.0, 9.0, 16.0}, "range4_max", 1 }
};

-- Apply boundaries and rank attributes.
for k, at in AttributeData do

	local attribute = at[AT_Name];
	local val = 0;
	local rating = 1;

	if checkgameattribute( attribute ) == 1 then

		-- Boundary check and fix.
		val = getgameattribute( attribute );

		if not ( at[AT_ZeroOK] == 1 and val == 0 ) and at[AT_Min] and ( val < at[AT_Min] ) then
			setgameattribute( attribute, at[AT_Min] );
			val = at[AT_Min];
		end

		if at[AT_Max] and val > at[AT_Max] then
			setgameattribute( attribute, at[AT_Max] );
			val = at[AT_Max];
		end

		-- Ranking.
		if at[AT_RankList] then
			rating = Rank( val, at[AT_RankList] );
		end
	end

	if at[AT_UIName] then
		-- Add the rating to the creature's variable list -- rating is in the range [0-4].
		setattribute( at[AT_UIName].. "_rating", rating - 1 );
		-- Add the display version to the creature's variable list.
		setattribute( at[AT_UIName] .. "_val", val * at[AT_UIScale] );
	end

end

if checkgameattribute( "range2_damage" ) == 1 then
	val = getgameattribute( "range2_damage" );
	if (val and val > 0) then
		-- if this is artillyer
		--if (getgameattribute( "range2_special" ) > 0) then
		--	rating = Rank( val, {0.0,4.0,8.0,13.5} );
		--	setattribute( "range2_damage_rating", rating - 1 );
			-- this is direct range
		--else
			rating = Rank( val, {0.0,12.0,20.0,26.0} );
			setattribute( "range2_damage_rating", rating - 1 );
		--end
		setattribute( "range2_damage_val", val );
	end
end

if checkgameattribute( "range4_damage" ) == 1 then
	val = getgameattribute( "range4_damage" );
	if (val and val > 0) then
		-- if this is artillyer
		--if (getgameattribute( "range4_special" ) > 0) then
		--	rating = Rank( val, {0.0,4.0,8.0,13.5} );
		--	setattribute( "range4_damage_rating", rating - 1 );
		-- this is direct range
		--else
			rating = Rank( val, {0.0,12.0,20.0,26.0} );
			setattribute( "range4_damage_rating", rating - 1 );
		--end
		setattribute( "range4_damage_val", val );
	end
end

-- make sure flyers and swimmers don't have and are not charged for certain abilities

if ( getgameattribute("is_flyer") == 1 ) then
	setgameattribute( "can_dig", 0 );
	setgameattribute( "leap_attack", 0 );
	setgameattribute( "charge_attack", 0 );
end

if ( getgameattribute("is_swimmer") == 1 and getgameattribute("is_land") == 0) then
	setgameattribute( "can_dig", 0 );
end

-- Give Flyers minimum sight radius

if ( getgameattribute("is_flyer") == 1 ) and
	( getgameattribute("sight_radius1") < 25 ) then
	setgameattribute("sight_radius1",25.0)
end



----------------------------------------------------------------
-- Attribute Costs
----------------------------------------------------------------

hitpoints = getgameattribute( "hitpoints" );
armour = getgameattribute( "armour" );
sight_radius1 = getgameattribute("sight_radius1" );

rangeRankModifier = 1.35;
directCostModifier = 1.30;
artilleryCostModifier = 1.75;

-- melee damage
damagem = getgameattribute( "melee_damage" );

-- range2 damage
damage2 = getgameattribute( "range2_damage" );
-- tweak the ranking of damage from range units
damage2rank = damage2 * rangeRankModifier;
if (getgameattribute( "range2_special" ) > 0) then
	-- make artillery units cost a bit more
	damage2 = damage2 * artilleryCostModifier;
else
	-- make direct range units cost a bit more
	damage2 = damage2 * directCostModifier;
end

-- range4 damage
damage4 = getgameattribute( "range4_damage" );
-- tweak the ranking of damage from range units
damage4rank = damage4 * rangeRankModifier;
if (getgameattribute( "range4_special" ) > 0) then
	-- make artillery units cost a bit more
	damage4 = damage4 * artilleryCostModifier;
else
	-- make direct range units cost a bit more
	damage4 = damage4 * directCostModifier;
end

-- most damage of all types
damage = max( damagem, max( damage2, damage4 ) );

-- most damage_rank of all types
damage_rank = max( damagem, max( damage2rank, damage4rank ) );	


speed_max = getgameattribute( "speed_max" );
airspeed_max = getgameattribute( "airspeed_max" );
waterspeed_max = getgameattribute( "waterspeed_max" );
-- Charging only for the max speed.  Electric cost can be added to flyers/swimmers to account for them having multiple modes of transportation
speed = max( speed_max, max( airspeed_max, waterspeed_max ) );

-- Power of the creature.  Used to rank it.
power = sqrt( damage_rank * hitpoints / ( 1-armour ) );

-- Power of the creature, with the amount of armor reduced slightly to reduce the cost.
power_less_armour = sqrt( damage * hitpoints/ ( 1- armour/1.5 ) );

-- error check: checking speedcost to make sure it doesn't go below 0, if it does, setting it to 0.  Without this error check anything with less than 20 speed gets a discount on it's other attributes because of it's low speed.

speedCost = (speed * 2 - 40)
if speedCost < 0 then
 speedCost = 0
end

-- setting costgather, right now we're adding speed as a flat value, but it should be some function of speed so we don't alter the cost effectiveness of units (large groups of small units are charged more for their speed than small groups of strong units if we add it as a flat value)
CostGather = CostGather + ( 2.9 * power_less_armour ) + speedCost + ( 0.4 * sight_radius1 );

-- Reduce cost if unit is a dedicated swimmer
--if 	getgameattribute("speed_max") == 0 and
--	getgameattribute("waterspeed_max") > 0 and
--	getgameattribute("airspeed_max") == 0 then
--	CostGather = CostGather * .75
--end


-- save this for later, just incase we do this special case thing
SavedCostGather = CostGather

----------------------------------------------------------------
-- Rank Calculations based on actual health, health, and defense
----------------------------------------------------------------

if hitpoints/(1-armour) > 136 then
	MinRank = max(MinRank, 2);
end

if hitpoints/(1-armour) > 175 then
	MinRank = max(MinRank, 3);
end

if hitpoints/(1-armour) > 450 then
	MinRank = max(MinRank, 4);
end


--if hitpoints > 400 then
--	MinRank = max(MinRank, 4);
--end

--if (has_really_high_defense()==1) then
--	MinRank = max(MinRank, 4);
--end


----------------------------------------------------------------
-- Ranged Units Not Charged for Certain Abilities
----------------------------------------------------------------

if (damage2>0) or (damage4>0) then
	setgameattribute( "charge_attack", 0 );
	setgameattribute( "leap_attack", 0 );
end


----------------------------------------------------------------
-- Ability Cost and Min Rank
----------------------------------------------------------------

-- Ability type constants.
ABT_Ability = 1;
ABT_Melee = 2;
ABT_Range = 3;

-- Functions that are called with the ability id parameter and return a 1 if the ability is present.
-- These correspond to the ability type constants above.
ABT_CheckFunctions =
{
	getgameattribute,
	hasmeleedmgtype,
	hasrangedmgtype
};

AB_AbilityType = 1;
AB_Id = 2;
AB_MinRank = 3;
AB_CostRenew = 4;
AB_CostGather = 5;

AbilityData =
{
-- { ability_type, ability_id, minrank, costrenew, costgather }

	--{ ABT_Ability, "herding", 0, 45, 0 },
	{ ABT_Ability, "pack_hunter", 0, 45, 0 },
	{ ABT_Ability, "is_immune", 0, 15, 0 },
	{ ABT_Ability, "keen_sense", 0, 10, 0 },
	{ ABT_Ability, "quill_burst", 2, 30, 0 },
	{ ABT_Ability, "regeneration", 0, 25, 0 },
	{ ABT_Ability, "leap_attack", 2, 30, 0 },
	{ ABT_Ability, "frenzy_attack", 2, 40, 0 },
	{ ABT_Ability, "can_dig", 0, 10, 0 },
	{ ABT_Ability, "plague_attack", 1, 50, 0 },
	{ ABT_Ability, "sonar_pulse", 0, 30, 0 },
	{ ABT_Ability, "is_swimmer", 2, 0, 0 },
	{ ABT_Ability, "is_stealthy", 0, 30, 0 },
	{ ABT_Ability, "charge_attack", 3, 30, 0 },
	{ ABT_Ability, "is_flyer", 3, 75, 0 },
	{ ABT_Ability, "electric_burst", 3, 75, 0 },
	{ ABT_Ability, "stink_attack", 0, 50, 0, },
	{ ABT_Ability, "poison_touch", 3, 50, 0 },
	--{ ABT_Ability, "end_bonus", 0, 35, 0 },
	

	{ ABT_Range, DT_Electric, 2, 0, 0 },
	{ ABT_Range, DT_Poison, 4, 35, 0 },
	{ ABT_Range, DT_Sonic, 3, 60, 0 },
	{ ABT_Range, DT_VenomSpray, 3, 35, 0 },

	{ ABT_Melee, DT_BarrierDestroy, 0, 25, 0 },
	{ ABT_Melee, DT_HornNegateArmour, 3, 50, 0 },
	{ ABT_Melee, DT_HornNegateFull, 2, 40, 0 },
	{ ABT_Melee, DT_Poison, 3, 50, 0 },
};


-- Total the costs and find min rank for all abilities.
for n, ab in AbilityData do
	-- If we have this ability...
	if ABT_CheckFunctions[ab[AB_AbilityType]]( ab[AB_Id] ) == 1 then
		-- add on the costs.
		if ab[AB_CostRenew] then
			CostRenew = CostRenew + ab[AB_CostRenew];
		end
		if ab[AB_CostGather] then
			CostGather = CostGather + ab[AB_CostGather];
		end
		-- check for min rank.
		MinRank = max( MinRank, ab[AB_MinRank] );
	end
end

-- Checks to see if creature has ability that requires endurance
function has_ability_requiring_endurance() 
	
	if (	getgameattribute("stink_attack")==1 or
		getgameattribute("electric_burst")==1 or
		getgameattribute("sonar_pulse")==1 or
		getgameattribute("quill_burst")==1 or
		getgameattribute("frenzy_attack")==1 or
		getgameattribute("plague_attack")==1) then
		return 1
	else
		return 0
	end
end

-- if this creature has high endurance
if (getgameattribute("end_bonus")==1) then

	-- check for triggered abilities that cost endurance
	if (has_ability_requiring_endurance()==1) then
		CostRenew = CostRenew + 35
	else
		CostRenew = CostRenew + 5
	end

end

-- if this creature has over 75 defense with herding ability
if (getgameattribute("herding")==1) then
	if (has_high_defense()==0) then
		CostRenew = CostRenew + 45
		else
		CostRenew = CostRenew + 0
	end
end



-----------------------------------------------------------------------------
-- Adding cost for All Range Creatures.

-- used to determine whether the range type is splash damage
function get_range_var( limb, var )

	local str = "range"..limb.."_"..var

	if checkgameattribute(str) == 1 then
		return getgameattribute( str )
	end

	return 0;
end

function range_artillerytype( limb )

	-- if this creature has a special field it has artillery
	return get_range_var( limb, "special");
	
end

-- These will be set to flag if the creature has any direct or any artillery range attack.
has_direct = nil;
has_artillery = nil;

if (damage2>0) then
  -- if not artillery range
  if (range_artillerytype(2)==0) then
    has_direct = 1;
    CostRenew = CostRenew + 40;
  else
    has_artillery = 1;
    CostRenew = CostRenew + 40;
  end
  -- all range is at least rank 2
  if (MinRank < 2) then
    MinRank = 2;
  end
end

if (damage4>0) then
  -- if not artillery range
  if (range_artillerytype(4)==0) then
    has_direct = 1;
    CostRenew = CostRenew + 40;
  else
    has_artillery = 1;
    CostRenew = CostRenew + 40;
  end
  -- all range is at least rank 2
  if (MinRank < 2) then
    MinRank = 2;
  end  
end

 -- Does creature have flight and range artillery?
if (getgameattribute( "range2_special" ) > 0) and ( getgameattribute("is_flyer") == 1 ) then
    CostRenew = CostRenew + 0;
end

if (getgameattribute( "range4_special" ) > 0) and ( getgameattribute("is_flyer") == 1 ) then
    CostRenew = CostRenew + 0;
end

-- actual hit point cap for artillery units
if hitpoints/(1-armour) > 500 and has_artillery == 1 then
	MinRank = max(MinRank, 5);
end

-- Dedicated swimmer cost modifiers
artillerypureswimmercostmodifier = .90;
directpureswimmercostmodifier = 0.75;
meleepureswimmercostmodifier = 0.50;

if 	getgameattribute("speed_max") == 0 and
 	getgameattribute("waterspeed_max") > 0 and
 	getgameattribute("airspeed_max") == 0 then
 	
 	if has_direct == 1 then 
 		CostGather = CostGather * directpureswimmercostmodifier; 
 	end
 	
 	if has_artillery == 1 then 
 		CostGather = CostGather * artillerypureswimmercostmodifier;
 		else CostGather = CostGather * meleepureswimmercostmodifier;
 	end
end


----------------------------------------------------------------
-- Ranking
----------------------------------------------------------------

-- These values are power ratings, the values divide the creatures up so that rank 1 has 35% of the creatures, rank 2 and 3 20% each, rank 4 15% and rank 5 10%

-- Non-flyer specific power rankings
if (airspeed_max == 0) then
	melee_rank_cmp = { 26.6, 39.2, 60, 105 };
	direct_rank_cmp = { 26.6, 39.2, 56.3, 90 };
	artillery_rank_cmp = { 26.6, 39.2, 56.3, 100 };

-- Flyer specific power rankings
else
	melee_rank_cmp = { 26.6, 39.2, 65, 115 };
	direct_rank_cmp = { 26.6, 39.2, 65, 115 };
	artillery_rank_cmp = { 26.6, 39.2, 65, 115 };
end

CreatureRank = Rank( power, melee_rank_cmp );

-- Do rank calculations for range creatures

if has_direct then
	CreatureRank = max( CreatureRank, Rank( power, direct_rank_cmp ) );
end
if has_artillery then
	CreatureRank = max( CreatureRank, Rank( power, artillery_rank_cmp ) );
end

-- cap the rank to a minimum value
if CreatureRank < MinRank then
	CreatureRank = MinRank;
end

-- Range attacks cost modifier.

BodyPartsThatCanHaveRange = { 2, 4 };

for index, part in BodyPartsThatCanHaveRange do
 	part_damage = getgameattribute( "range" .. part .. "_damage" );
 	if ( part_damage > 0 ) then
 		-- if not artillery range
 		if ( range_artillerytype( part ) == 0 ) then
 			has_direct = 1;
 			 			
 			-- Direct range cost modifier and coal modifier
 			CostGather = CostGather + (damagem * 2);
 			
 			if has_direct == 1 and CreatureRank < 4 then
 			CostGather = CostGather * 1.1;
 			else
 			CostGather = CostGather * 1.1;
 			end
 			
 			-- Pack hunter cost modifier
 			if getgameattribute("pack_hunter") == 1 then
 			CostRenew = CostRenew +10 --*(CreatureRank - 1);
 			end
 		
 		else
 			has_artillery = 1;
 			
 			-- Artillery Melee cost modifier
 			if has_artillery == 1 and CreatureRank > 3 then
 			CostGather = CostGather + (damagem * 3)
 			else
 			CostGather = CostGather + (damagem * 3)
 			end
 			CostGather = CostGather * 1.1;
 		
 			-- Pack hunter Cost modifier
 			if getgameattribute("pack_hunter") == 1 then
 			CostRenew = CostRenew +10 --*(CreatureRank - 1);
 			end
 		
 
 		end
 	end
 end



----------------------------------------------------------------
-- Commit aggregate attributes.
----------------------------------------------------------------

setattribute( "creature_rank", CreatureRank )
setattribute( "costrenew", CostRenew );
setattribute( "cost", CostGather );
setattribute( "buildtime", 10 );

if (CreatureRank==1) then
 setgameattribute( "constructionticks", 32 );
end
if (CreatureRank==2) then
 setgameattribute( "constructionticks", 48 );
end
if (CreatureRank==3) then
 setgameattribute( "constructionticks", 64 );
end
if (CreatureRank==4) then
 setgameattribute( "constructionticks", 80 );
end
if (CreatureRank==5) then
 setgameattribute( "constructionticks", 96 );
end

setattribute( "popsize", 1 )

----------------------------------------------------------------


----------------------------------------------------------------


end

