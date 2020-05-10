-- all the different argument types

CLASS_CONDITION = 0
CLASS_ACTION = 1

-- arg list

ARG_INT = 0
ARG_FLOAT = 1
ARG_ENTITY = 2
ARG_PLAYER = 3
ARG_BPCOMPARETYPE = 4
ARG_BPCOMPAREID = 5
ARG_SCRIPTID = 6
ARG_TRIGGERID = 7
ARG_COMPARE = 8
ARG_SOUND = 9
ARG_TRUTH = 10
ARG_MESSAGE = 11
ARG_GROUPID = 12
ARG_EBPNETID = 13
ARG_KEYPRESS = 14
ARG_CAMERAANIMID = 15
ARG_OBJANIMID = 16
ARG_MOVEANIMID = 17
ARG_TRIGGERVARID = 18
ARG_TRIGGERVAROP = 19
-- ARG_RESEARCHTYPE = 20
ARG_DIALOGID = 21
ARG_DECALID = 22
ARG_ENTITYCMD = 23
-- ARG_OBJECTIVESTATE = 24
-- ARG_STANCETYPE = 25
-- ARG_HUD = 26
-- ARG_ADDONTYPE = 27
-- ARG_CHARABILITY = 28
ARG_MOVIE = 29
ARG_ENUM = 30
ARG_ARMY = 31
ARG_STOCKEBP = 32

----------------- MOD SPECIFIC ENUMERATED TYPES -------------------------

-- Note: The names of enumerated types must not contain any white space.
--       The same string is used for the keywords in trigger sentences.

enum = {}

enum.e0 = {}
enum.e0.name = "researchtype"
enum.e0.value = {}
enum.e0.value[0] = "Rank2"
enum.e0.value[1] = "Rank3"
enum.e0.value[2] = "Rank4"
enum.e0.value[3] = "Rank5"
enum.e0.value[4] = "AdvancedStructure"
enum.e0.value[5] = "HenchmanHeal"
enum.e0.value[6] = "HenchmanTag"
enum.e0.value[7] = "HenchmanBinoculars"
enum.e0.value[8] = "HenchmanYoke"
enum.e0.value[9] = "HenchmanMotivationalSpeech"
enum.e0.value[10] = "StrengthenFences"
enum.e0.value[11] = "StrengthenElectricalGrid"
enum.e0.value[12] = "IncBuildingIntegrity"
enum.e0.value[13] = "HenchmanImprovedHealing"
enum.e0.value[14] = "TowerUpgrade"

enum.e10 = {}
enum.e10.name = "hud"
enum.e10.value = {}
enum.e10.value[0] = "ArmyBuilder"
enum.e10.value[1] = "Objectives"
enum.e10.value[2] = "ResourceAndPop"
enum.e10.value[3] = "HenchmanBuild"
enum.e10.value[4] = "HenchmanCreate"
enum.e10.value[5] = "BuildLightningRod"
enum.e10.value[6] = "BuildResearchClinic"
enum.e10.value[7] = "BuildCreatureChamber"
enum.e10.value[8] = "ResearchRank2"
enum.e10.value[9] = "ElectricalBurst"
enum.e10.value[10] = "ElectricalGenerator"
enum.e10.value[11] = "HenchmanAdvancedBuild"

-- The order of the enable-type must match the enumerated type SigmaTaskbar::EnableType
enum.e12 = {}
enum.e12.name = "enable-type"
enum.e12.value = {}
enum.e12.value[0] = "HenchmanKill"
enum.e12.value[1] = "HenchmanBuild"
enum.e12.value[2] = "HenchmanAdvancedBuild"

enum.e20 = {}
enum.e20.name = "addontype"
enum.e20.value = {}
enum.e20.value[0] = "EGen1"
enum.e20.value[1] = "EGen2"
enum.e20.value[2] = "EGen3"

enum.e30 = {}
enum.e30.name = "character-ability"
enum.e30.value = {}
enum.e30.value[0] = "RexPoisonTouch"
enum.e30.value[1] = "RexRegeneration"
enum.e30.value[2] = "RexKeenSense"
enum.e30.value[3] = "RexNeuroToxin"
enum.e30.value[4] = "RexPack"
enum.e30.value[5] = "LucySabotage"

enum.e40 = {}
enum.e40.name = "stancetype"
enum.e40.value = {}
enum.e40.value[0] = "Aggressive"
enum.e40.value[1] = "Territorial"
enum.e40.value[2] = "Passive"
enum.e40.value[3] = "None"

enum.e50 = {}
enum.e50.name = "objectivestate"
enum.e50.value = {}
enum.e50.value[0] = "Off"
enum.e50.value[1] = "Incomplete"
enum.e50.value[2] = "Complete"
enum.e50.value[3] = "Failed"

enum.e60 = {}
enum.e60.name = "entity-command"
enum.e60.value = {}
enum.e60.value[0] = "SpecialAttack"
enum.e60.value[1] = "Move"
enum.e60.value[2] = "Attack"
enum.e60.value[3] = "Guard"
enum.e60.value[4] = "AttackMove"
enum.e60.value[5] = "AttackGround"
enum.e60.value[6] = "Patrol"
enum.e60.value[7] = "Heal"
enum.e60.value[8] = "Tag"
enum.e60.value[9] = "RallyPoint"
enum.e60.value[10] = "DefaultAction"
enum.e60.value[11] = "GarrisonSelf"
enum.e60.value[12] = "Ungarrison"
enum.e60.value[13] = "PatrolQueue"
enum.e60.value[14] = "Repair"

enum.e80 = {}
enum.e80.name = "ai-difficulty"
enum.e80.value = {}
enum.e80.value[0] = "Easy"
enum.e80.value[1] = "Standard"
enum.e80.value[2] = "Hard"

enum.e100 = {}
enum.e100.name = "upgradetype"
enum.e100.value = {}
enum.e100.value[0] = "Defense upgrade"
enum.e100.value[1] = "Speed upgrade"
enum.e100.value[2] = "Melee Attack upgrade"
enum.e100.value[3] = "Hitpoint upgrade"
enum.e100.value[4] = "Sight Radius upgrade"
enum.e100.value[5] = "Ranged Attack upgrade"
enum.e100.value[6] = "Splash Attack upgrade"
enum.e100.value[7] = "Area Attack Radius upgrade"

enum.e1000 = {}
enum.e1000.name = "overlay-hud"
enum.e1000.value = {}
enum.e1000.value[0] = "Continue button"

----------------- CONDITIONS -------------------------

cond = {}

cond.c30 = {}
cond.c30.version = 1.00
cond.c30.class = CLASS_CONDITION
cond.c30.name = "EntityNotAlive";
cond.c30.sentance = "if entity not alive";
cond.c30.numargs = 1;
cond.c30.args = {}
cond.c30.args[1] = ARG_ENTITY;

cond.c40 = {}
cond.c40.version = 1.00
cond.c40.class = CLASS_CONDITION
cond.c40.name = "GroupNotAlive";
cond.c40.sentance = "if group is not alive";
cond.c40.numargs = 1;
cond.c40.args = {}
cond.c40.args[1] = ARG_GROUPID;

cond.c70 = {}
cond.c70.version = 1.00
cond.c70.class = CLASS_CONDITION
cond.c70.name = "LabDead";
cond.c70.sentance = "if lab is dead";
cond.c70.numargs = 0;

cond.c100 = {}
cond.c100.version = 1.00
cond.c100.class = CLASS_CONDITION
cond.c100.name = "HowMuchScrap";
cond.c100.sentance = "if player has compared quantity scrap"
cond.c100.numargs = 3;
cond.c100.args = {}
cond.c100.args[1] = ARG_PLAYER;
cond.c100.args[2] = ARG_COMPARE;
cond.c100.args[3] = ARG_INT;

cond.c110 = {}
cond.c110.version = 1.00
cond.c110.class = CLASS_CONDITION
cond.c110.name = "HowMuchElectricity";
cond.c110.sentance = "if player has compared quantity electricity"
cond.c110.numargs = 3;
cond.c110.args = {}
cond.c110.args[1] = ARG_PLAYER;
cond.c110.args[2] = ARG_COMPARE;
cond.c110.args[3] = ARG_INT;

cond.c150 = {}
cond.c150.version = 1.00
cond.c150.class = CLASS_CONDITION
cond.c150.name = "EnemiesDead";
cond.c150.sentance = "if all enemies are dead"
cond.c150.numargs = 0;

cond.c220 = {}
cond.c220.version = 1.00
cond.c220.class = CLASS_CONDITION
cond.c220.name = "EntityInProximity";
cond.c220.sentance = "if any-entity is within quantity meters from location"
cond.c220.numargs = 2;
cond.c220.args = {}
cond.c220.args[1] = ARG_INT;
cond.c220.args[2] = ARG_ENTITY;

cond.c240 = {}
cond.c240.version = 1.00
cond.c240.class = CLASS_CONDITION
cond.c240.name = "EntityHealth";
cond.c240.sentance = "if entity health is compared quantity"
cond.c240.numargs = 3;
cond.c240.args = {}
cond.c240.args[1] = ARG_ENTITY;
cond.c240.args[2] = ARG_COMPARE;
cond.c240.args[3] = ARG_INT;

cond.c245 = {}
cond.c245.version = 1.00
cond.c245.class = CLASS_CONDITION
cond.c245.name = "GroupHealth";
cond.c245.sentance = "if group health is compared quantity percent";
cond.c245.numargs = 3;
cond.c245.args = {}
cond.c245.args[1] = ARG_GROUPID;
cond.c245.args[2] = ARG_COMPARE;
cond.c245.args[3] = ARG_INT;

cond.c260 = {}
cond.c260.version = 1.00
cond.c260.class = CLASS_CONDITION
cond.c260.name = "EBP permitted";
cond.c260.sentance = "if stocktype is permitted"
cond.c260.numargs = 1;
cond.c260.args = {}
cond.c260.args[1] = ARG_STOCKEBP;

cond.c280 = {}
cond.c280.version = 1.00
cond.c280.class = CLASS_CONDITION
cond.c280.name = "Army size";
cond.c280.sentance = "if army-size is compared quantity"
cond.c280.numargs = 2;
cond.c280.args = {}
cond.c280.args[1] = ARG_COMPARE;
cond.c280.args[2] = ARG_INT;

cond.c283 = {}
cond.c283.version = 1.00
cond.c283.class = CLASS_CONDITION
cond.c283.name = "Group members selected";
cond.c283.sentance = "if the num of entities from group selected is compared to quantity"
cond.c283.numargs = 3;
cond.c283.args = {}
cond.c283.args[1] = ARG_GROUPID;
cond.c283.args[2] = ARG_COMPARE;
cond.c283.args[3] = ARG_INT;

cond.c282 = {}
cond.c282.version = 1.00
cond.c282.class = CLASS_CONDITION
cond.c282.name = "Player has entity-type";
cond.c282.sentance = "if this-player has one or more instances of creaturetype"
cond.c282.numargs = 1;
cond.c282.args = {}
cond.c282.args[1] = ARG_EBPNETID;

cond.c284 = {}
cond.c284.version = 1.00
cond.c284.class = CLASS_CONDITION
cond.c284.name = "Player is constructing entity-type";
cond.c284.sentance = "if this-player is constructing one or more instances of creaturetype"
cond.c284.numargs = 1;
cond.c284.args = {}
cond.c284.args[1] = ARG_EBPNETID;

cond.c285 = {}
cond.c285.version = 1.00
cond.c285.class = CLASS_CONDITION
cond.c285.name = "Player has selected entity-type";
cond.c285.sentance = "if this-player has singly selected a creaturetype"
cond.c285.numargs = 1;
cond.c285.args = {}
cond.c285.args[1] = ARG_EBPNETID;

cond.c286 = {}
cond.c286.version = 1.00
cond.c286.class = CLASS_CONDITION
cond.c286.name = "Player has research"
cond.c286.sentance = "if this-player has researched researchtype"
cond.c286.numargs = 1;
cond.c286.args = {}
cond.c286.args[1] = ARG_ENUM;

cond.c286a = {}
cond.c286a.version = 1.00
cond.c286a.class = CLASS_CONDITION
cond.c286a.name = "Player is researching"
cond.c286a.sentance = "if this-player is researching researchtype"
cond.c286a.numargs = 1;
cond.c286a.args = {}
cond.c286a.args[1] = ARG_ENUM;

cond.c287 = {}
cond.c287.version = 1.00
cond.c287.class = CLASS_CONDITION
cond.c287.name = "EntityEndurance"
cond.c287.sentance = "if entity endurance is compared quantity percent"
cond.c287.numargs = 3;
cond.c287.args = {}
cond.c287.args[1] = ARG_ENTITY;
cond.c287.args[2] = ARG_COMPARE;
cond.c287.args[3] = ARG_INT;

cond.c288 = {}
cond.c288.version = 1.00
cond.c288.class = CLASS_CONDITION
cond.c288.name = "GroupEndurance"
cond.c288.sentance = "if group endurance is compared quantity percent"
cond.c288.numargs = 3;
cond.c288.args = {}
cond.c288.args[1] = ARG_GROUPID;
cond.c288.args[2] = ARG_COMPARE;
cond.c288.args[3] = ARG_INT;

cond.c289 = {}
cond.c289.version = 1.00
cond.c289.class = CLASS_CONDITION
cond.c289.name = "Player is not restricted to"
cond.c289.sentance = "if this-player is not restricted to creaturetype"
cond.c289.numargs = 1;
cond.c289.args = {}
cond.c289.args[1] = ARG_EBPNETID;

cond.c300 = {}
cond.c300.version = 1.00
cond.c300.class = CLASS_CONDITION
cond.c300.name = "Objective, get objective state";
cond.c300.sentance = "if the objective-state for objective number is objectivestate"
cond.c300.numargs = 2;
cond.c300.args = {}
cond.c300.args[1] = ARG_INT;
cond.c300.args[2] = ARG_ENUM;

cond.c310 = {}
cond.c310.version = 1.00
cond.c310.class = CLASS_CONDITION
cond.c310.name = "Entity garrisoned";
cond.c310.sentance = "if entity is garrisoned within entity"
cond.c310.numargs = 2;
cond.c310.args = {}
cond.c310.args[1] = ARG_ENTITY;
cond.c310.args[2] = ARG_ENTITY;

--=============================================================================
-- Sigma HUD conditions
--=============================================================================

cond.c330 = {}
cond.c330.version = 1.00
cond.c330.class = CLASS_CONDITION
cond.c330.name = "UI Button pressed (Henchman build)";
cond.c330.sentance = "if the henchman build button was pressed"
cond.c330.numargs = 0;

cond.c332 = {}
cond.c332.version = 1.00
cond.c332.class = CLASS_CONDITION
cond.c332.name = "UI Dialog shown (Objective)";
cond.c332.sentance = "if the objective-dialog was shown"
cond.c332.numargs = 0;

cond.c333 = {}
cond.c333.version = 1.00
cond.c333.class = CLASS_CONDITION
cond.c333.name = "UI Button pressed (Henchman build lightning rod)";
cond.c333.sentance = "if the henchman build lightning-rod button was pressed"
cond.c333.numargs = 0;

cond.c334 = {}
cond.c334.version = 1.00
cond.c334.class = CLASS_CONDITION
cond.c334.name = "UI Button pressed (Henchman build electrical gen)";
cond.c334.sentance = "if the henchman build electrical-generator button was pressed"
cond.c334.numargs = 0;

cond.c335 = {}
cond.c335.version = 1.00
cond.c335.class = CLASS_CONDITION
cond.c335.name = "UI Button pressed (Henchman build creature chamber)";
cond.c335.sentance = "if the henchman build creature-chamber button was pressed"
cond.c335.numargs = 0;

cond.c342 = {}
cond.c342.version = 1.00
cond.c342.class = CLASS_CONDITION
cond.c342.name = "UI camera cannot rotate";
cond.c342.sentance = "game camera cannot rotate"
cond.c342.numargs = 0;

cond.c360 = {}
cond.c360.version = 1.00
cond.c360.class = CLASS_CONDITION
cond.c360.name = "Group scrap";
cond.c360.sentance = "scrap of group is compared float-number"
cond.c360.numargs = 3;
cond.c360.args = {}
cond.c360.args[1] = ARG_GROUPID;
cond.c360.args[2] = ARG_COMPARE;
cond.c360.args[3] = ARG_FLOAT;

--=============================================================================

cond.c500 = {}
cond.c500.version = 1.00
cond.c500.class = CLASS_CONDITION
cond.c500.name = "Player has selected so many of entity-type";
cond.c500.sentance = "if this-player has selected compared quantity creaturetype"
cond.c500.numargs = 3;
cond.c500.args = {}
cond.c500.args[1] = ARG_COMPARE;
cond.c500.args[2] = ARG_INT;
cond.c500.args[3] = ARG_EBPNETID;

cond.c540 = {}
cond.c540.version = 1.00
cond.c540.class = CLASS_CONDITION
cond.c540.name = "PlayerSpawnedNewEntity";
cond.c540.sentance = "if player has spawned new-entity"
cond.c540.numargs = 1;
cond.c540.args = {}
cond.c540.args[1] = ARG_PLAYER;

cond.c550 = {}
cond.c550.version = 1.00
cond.c550.class = CLASS_CONDITION
cond.c550.name = "AI Difficulty Level";
cond.c550.sentance = "if difficulty is ai-difficulty"
cond.c550.numargs = 1;
cond.c550.args = {}
cond.c550.args[1] = ARG_ENUM;

----------------- ACTIONS -------------------------

cond.a30 = {}
cond.a30.version = 1.00
cond.a30.class = CLASS_ACTION
cond.a30.name = "Win";
cond.a30.sentance = "player wins";
cond.a30.numargs = 1;
cond.a30.args = {}
cond.a30.args[1] = ARG_PLAYER;

cond.a40 = {}
cond.a40.version = 1.00
cond.a40.class = CLASS_ACTION
cond.a40.name = "Lose";
cond.a40.sentance = "player loses";
cond.a40.numargs = 1;
cond.a40.args = {}
cond.a40.args[1] = ARG_PLAYER;

cond.a70 = {}
cond.a70.version = 1.00
cond.a70.class = CLASS_ACTION
cond.a70.name = "Order group to location";
cond.a70.sentance = "order group to location";
cond.a70.numargs = 2;
cond.a70.args = {}
cond.a70.args[1] = ARG_GROUPID;
cond.a70.args[2] = ARG_ENTITY;

cond.a71 = {}
cond.a71.version = 1.00
cond.a71.class = CLASS_ACTION
cond.a71.name = "Group2Group";
cond.a71.sentance = "order group to perform default action on group";
cond.a71.numargs = 2;
cond.a71.args = {}
cond.a71.args[1] = ARG_GROUPID;
cond.a71.args[2] = ARG_GROUPID;

cond.a72 = {}
cond.a72.version = 1.00
cond.a72.class = CLASS_ACTION
cond.a72.name = "Order group to move randomly";
cond.a72.sentance = "order a random quantity percent of group to move a random quantity meters";
cond.a72.numargs = 3;
cond.a72.args = {}
cond.a72.args[1] = ARG_INT;
cond.a72.args[2] = ARG_GROUPID;
cond.a72.args[3] = ARG_INT;

cond.a73 = {}
cond.a73.version = 1.00
cond.a73.class = CLASS_ACTION
cond.a73.name = "Order group to stop";
cond.a73.sentance = "order group to stop";
cond.a73.numargs = 1;
cond.a73.args = {}
cond.a73.args[1] = ARG_GROUPID;

cond.a74 = {}
cond.a74.version = 1.00
cond.a74.class = CLASS_ACTION
cond.a74.name = "Order group to do command";
cond.a74.sentance = "order group to entity-command entity";
cond.a74.numargs = 3;
cond.a74.args = {}
cond.a74.args[1] = ARG_GROUPID;
cond.a74.args[2] = ARG_ENUM;
cond.a74.args[3] = ARG_ENTITY;

cond.a75 = {}
cond.a75.version = 1.00
cond.a75.class = CLASS_ACTION
cond.a75.name = "GroupLookAtGroup";
cond.a75.sentance = "get group to look at group";
cond.a75.numargs = 2;
cond.a75.args = {}
cond.a75.args[1] = ARG_GROUPID;
cond.a75.args[2] = ARG_GROUPID;

cond.a76 = {}
cond.a76.version = 1.00
cond.a76.class = CLASS_ACTION
cond.a76.name = "GroupFaceGroup";
cond.a76.sentance = "get group to turn and face group";
cond.a76.numargs = 2;
cond.a76.args = {}
cond.a76.args[1] = ARG_GROUPID;
cond.a76.args[2] = ARG_GROUPID;

cond.a77 = {}
cond.a77.version = 1.00
cond.a77.class = CLASS_ACTION
cond.a77.name = "GroupFaceDirection";
cond.a77.sentance = "get group to turn and face float-number degrees";
cond.a77.numargs = 2;
cond.a77.args = {}
cond.a77.args[1] = ARG_GROUPID;
cond.a77.args[2] = ARG_FLOAT;

cond.a78 = {}
cond.a78.version = 1.00
cond.a78.class = CLASS_ACTION
cond.a78.name = "Order group to use stance";
cond.a78.sentance = "order group to use the stancetype stance";
cond.a78.numargs = 2;
cond.a78.args = {}
cond.a78.args[1] = ARG_GROUPID;
cond.a78.args[2] = ARG_ENUM;

cond.a79 = {}
cond.a79.version = 1.00
cond.a79.class = CLASS_ACTION
cond.a79.name = "Order group to wander (or not)";
cond.a79.sentance = "set group wandering to state";
cond.a79.numargs = 2;
cond.a79.args = {}
cond.a79.args[1] = ARG_GROUPID;
cond.a79.args[2] = ARG_TRUTH;

cond.a80 = {}
cond.a80.version = 1.00
cond.a80.class = CLASS_ACTION
cond.a80.name = "AIPause";
cond.a80.sentance = "set AI to state";
cond.a80.numargs = 1;
cond.a80.args = {}
cond.a80.args[1] = ARG_TRUTH;

cond.a81 = {}
cond.a81.version = 1.00
cond.a81.class = CLASS_ACTION
cond.a81.name = "AIPlayerPause";
cond.a81.sentance = "set AI for player to state";
cond.a81.numargs = 2;
cond.a81.args = {}
cond.a81.args[1] = ARG_PLAYER;
cond.a81.args[2] = ARG_TRUTH;

cond.a82 = {}
cond.a82.version = 1.00
cond.a82.class = CLASS_ACTION
cond.a82.name = "GroupFaceGroup (with speed)";
cond.a82.sentance = "get group to turn and face group at float-number degrees-per-second";
cond.a82.numargs = 3;
cond.a82.args = {}
cond.a82.args[1] = ARG_GROUPID;
cond.a82.args[2] = ARG_GROUPID;
cond.a82.args[3] = ARG_FLOAT;

cond.a83 = {}
cond.a83.version = 1.00
cond.a83.class = CLASS_ACTION
cond.a83.name = "GroupFaceDirection (with speed)";
cond.a83.sentance = "get group to turn and face float-number degrees at float-number degrees-per-second";
cond.a83.numargs = 3;
cond.a83.args = {}
cond.a83.args[1] = ARG_GROUPID;
cond.a83.args[2] = ARG_FLOAT;
cond.a83.args[3] = ARG_FLOAT;

cond.a85 = {}
cond.a85.version = 1.00
cond.a85.class = CLASS_ACTION
cond.a85.name = "Set army builder state";
cond.a85.sentance = "set army-builder on to state";
cond.a85.numargs = 1;
cond.a85.args = {}
cond.a85.args[1] = ARG_TRUTH;

cond.a100 = {}
cond.a100.version = 1.00
cond.a100.class = CLASS_ACTION
cond.a100.name = "Ungarrison group if garrisoned";
cond.a100.sentance = "Ungarrison group if it is garrisoned within entity";
cond.a100.numargs = 2;
cond.a100.args = {}
cond.a100.args[1] = ARG_GROUPID;
cond.a100.args[2] = ARG_ENTITY;

cond.a150 = {}
cond.a150.version = 1.00
cond.a150.class = CLASS_ACTION
cond.a150.name = "GivePlayerScrap";
cond.a150.sentance = "give player quantity scrap";
cond.a150.numargs = 2;
cond.a150.args = {}
cond.a150.args[1] = ARG_PLAYER;
cond.a150.args[2] = ARG_INT;

cond.a152 = {}
cond.a152.version = 1.00
cond.a152.class = CLASS_ACTION
cond.a152.name = "SetPlayerScrap";
cond.a152.sentance = "set player scrap to quantity";
cond.a152.numargs = 2;
cond.a152.args = {}
cond.a152.args[1] = ARG_PLAYER;
cond.a152.args[2] = ARG_INT;

cond.a160 = {}
cond.a160.version = 1.00
cond.a160.class = CLASS_ACTION
cond.a160.name = "GivePlayerElectricity";
cond.a160.sentance = "give player quantity electricity";
cond.a160.numargs = 2;
cond.a160.args = {}
cond.a160.args[1] = ARG_PLAYER;
cond.a160.args[2] = ARG_INT;

cond.a162 = {}
cond.a162.version = 1.00
cond.a162.class = CLASS_ACTION
cond.a162.name = "SetPlayerElectricity";
cond.a162.sentance = "set player electricity to quantity";
cond.a162.numargs = 2;
cond.a162.args = {}
cond.a162.args[1] = ARG_PLAYER;
cond.a162.args[2] = ARG_INT;

cond.a210 = {}
cond.a210.version = 1.00
cond.a210.class = CLASS_ACTION
cond.a210.name = "SetPlayerRank";
cond.a210.sentance = "set player rank to quantity";
cond.a210.numargs = 2;
cond.a210.args = {}
cond.a210.args[1] = ARG_PLAYER;
cond.a210.args[2] = ARG_INT;

cond.a219 = {}
cond.a219.version = 1.00
cond.a219.class = CLASS_ACTION
cond.a219.name = "PlayerCanBuild";
cond.a219.sentance = "player can build creaturetype";
cond.a219.numargs = 2;
cond.a219.args = {}
cond.a219.args[1] = ARG_PLAYER;
cond.a219.args[2] = ARG_EBPNETID;

cond.a220 = {}
cond.a220.version = 1.00
cond.a220.class = CLASS_ACTION
cond.a220.name = "PlayerCannotBuild";
cond.a220.sentance = "player cannot build creaturetype";
cond.a220.numargs = 2;
cond.a220.args = {}
cond.a220.args[1] = ARG_PLAYER;
cond.a220.args[2] = ARG_EBPNETID;

cond.a221 = {}
cond.a221.version = 1.00
cond.a221.class = CLASS_ACTION
cond.a221.name = "SetFogOfWar";
cond.a221.sentance = "set fog-of-war to state";
cond.a221.numargs = 1;
cond.a221.args = {}
cond.a221.args[1] = ARG_TRUTH;

cond.a222 = {}
cond.a222.version = 1.00
cond.a222.class = CLASS_ACTION
cond.a222.name = "MoveEntity";
cond.a222.sentance = "move entity to location";
cond.a222.numargs = 2;
cond.a222.args = {}
cond.a222.args[1] = ARG_ENTITY;
cond.a222.args[2] = ARG_ENTITY;

cond.a223 = {}
cond.a223.version = 1.00
cond.a223.class = CLASS_ACTION
cond.a223.name = "DecGroupHealth";
cond.a223.sentance = "decrement health of group by quantity";
cond.a223.numargs = 2;
cond.a223.args = {}
cond.a223.args[1] = ARG_GROUPID;
cond.a223.args[2] = ARG_INT;

cond.a224 = {}
cond.a224.version = 1.00
cond.a224.class = CLASS_ACTION
cond.a224.name = "UpdateProximityGroup";
cond.a224.sentance = "set group to all entities of player within quantity meters to location";
cond.a224.numargs = 4;
cond.a224.args = {}
cond.a224.args[1] = ARG_GROUPID;
cond.a224.args[2] = ARG_PLAYER;
cond.a224.args[3] = ARG_INT;
cond.a224.args[4] = ARG_ENTITY;

cond.a227a = {}
cond.a227a.version = 1.00
cond.a227a.class = CLASS_ACTION
cond.a227a.name = "GroupVisible in FOW";
cond.a227a.sentance = "set group visibily in fow to player to state";
cond.a227a.numargs = 3;
cond.a227a.args = {}
cond.a227a.args[1] = ARG_GROUPID;
cond.a227a.args[2] = ARG_PLAYER;
cond.a227a.args[3] = ARG_TRUTH;

cond.a228 = {}
cond.a228.version = 1.00
cond.a228.class = CLASS_ACTION
cond.a228.name = "MoveGroup";
cond.a228.sentance = "move group to location";
cond.a228.numargs = 2;
cond.a228.args = {}
cond.a228.args[1] = ARG_GROUPID;
cond.a228.args[2] = ARG_ENTITY;

cond.a231 = {}
cond.a231.version = 1.00
cond.a231.class = CLASS_ACTION
cond.a231.name = "AIRunscript";
cond.a231.sentance = "ask the player AI to run script message";
cond.a231.numargs = 2;
cond.a231.args = {}
cond.a231.args[1] = ARG_PLAYER;
cond.a231.args[2] = ARG_MESSAGE;

cond.a232 = {}
cond.a232.version = 1.00
cond.a232.class = CLASS_ACTION
cond.a232.name = "IncGroupHealth";
cond.a232.sentance = "Increment health of group by quantity";
cond.a232.numargs = 2;
cond.a232.args = {}
cond.a232.args[1] = ARG_GROUPID;
cond.a232.args[2] = ARG_INT;

cond.a233 = {}
cond.a233.version = 1.00
cond.a233.class = CLASS_ACTION
cond.a233.name = "IncFullGroupHealth";
cond.a233.sentance = "Increment health of group to maximum";
cond.a233.numargs = 1;
cond.a233.args = {}
cond.a233.args[1] = ARG_GROUPID;

cond.a234 = {}
cond.a234.version = 1.00
cond.a234.class = CLASS_ACTION
cond.a234.name = "UpdateHealthLevelGroup";
cond.a234.sentance = "set group to all entities of player with compared quantity percent of health";
cond.a234.numargs = 4;
cond.a234.args = {}
cond.a234.args[1] = ARG_GROUPID;
cond.a234.args[2] = ARG_PLAYER;
cond.a234.args[3] = ARG_COMPARE;
cond.a234.args[4] = ARG_INT;

cond.a235 = {}
cond.a235.version = 1.00
cond.a235.class = CLASS_ACTION
cond.a235.name = "DecGroupScrap"
cond.a235.sentance = "Decrease scrap of group by quantity";
cond.a235.numargs = 2;
cond.a235.args = {}
cond.a235.args[1] = ARG_GROUPID;
cond.a235.args[2] = ARG_INT;

cond.a277 = {}
cond.a277.version = 1.00
cond.a277.class = CLASS_ACTION
cond.a277.name = "SpawnEntity";
cond.a277.sentance = "spawn creaturetype from entity";
cond.a277.numargs = 2;
cond.a277.args = {}
cond.a277.args[1] = ARG_EBPNETID;
cond.a277.args[2] = ARG_ENTITY;

cond.a280 = {}
cond.a280.version = 1.00
cond.a280.class = CLASS_ACTION
cond.a280.name = "DespawnEntity";
cond.a280.sentance = "despawn entity";
cond.a280.numargs = 1;
cond.a280.args = {}
cond.a280.args[1] = ARG_ENTITY;

cond.a281 = {}
cond.a281.version = 1.00
cond.a281.class = CLASS_ACTION
cond.a281.name = "DespawnGroup";
cond.a281.sentance = "despawn group";
cond.a281.numargs = 1;
cond.a281.args = {}
cond.a281.args[1] = ARG_GROUPID;

cond.a290 = {}
cond.a290 .version = 1.00
cond.a290 .class = CLASS_ACTION
cond.a290 .name = "RespawnEntity";
cond.a290 .sentance = "respawn entity";
cond.a290 .numargs = 1;
cond.a290 .args = {}
cond.a290 .args[1] = ARG_ENTITY;

cond.a291 = {}
cond.a291 .version = 1.00
cond.a291 .class = CLASS_ACTION
cond.a291 .name = "RespawnGroup";
cond.a291 .sentance = "respawn group";
cond.a291 .numargs = 1;
cond.a291 .args = {}
cond.a291 .args[1] = ARG_GROUPID;

--=============================================================================
-- Army Builder EBP granting and forbiding action's
--=============================================================================

cond.a300 = {}
cond.a300.version = 1.00
cond.a300.class = CLASS_ACTION
cond.a300.name = "ArmyPermitEBP";
cond.a300.sentance = "Grant Army-Builder access to stocktype";
cond.a300.numargs = 1;
cond.a300.args = {}
cond.a300.args[1] = ARG_STOCKEBP;

cond.a301 = {}
cond.a301.version = 1.00
cond.a301.class = CLASS_ACTION
cond.a301.name = "ArmyForbidEBP";
cond.a301.sentance = "Forbid Army-Builder access to stocktype";
cond.a301.numargs = 1;
cond.a301.args = {}
cond.a301.args[1] = ARG_STOCKEBP;

cond.a302 = {}
cond.a302.version = 1.00
cond.a302.class = CLASS_ACTION
cond.a302.name = "GrantBlueprint";
cond.a302.sentance = "Add creaturetype to this-player's-army";
cond.a302.numargs = 1;
cond.a302.args = {}
cond.a302.args[1] = ARG_EBPNETID;

cond.a306 = {}
cond.a306.version = 1.00
cond.a306.class = CLASS_ACTION
cond.a306.name = "ArmyPermitEBP (no popup)";
cond.a306.sentance = "Grant Army-Builder access to stocktype with no popup";
cond.a306.numargs = 1;
cond.a306.args = {}
cond.a306.args[1] = ARG_STOCKEBP;

--=============================================================================

cond.a400 = {}
cond.a400.version = 1.00
cond.a400.class = CLASS_ACTION
cond.a400.name = "SetGroupOwner";
cond.a400.sentance = "set the owner of group content to player";
cond.a400.numargs = 2;
cond.a400.args = {}
cond.a400.args[1] = ARG_GROUPID;
cond.a400.args[2] = ARG_PLAYER;

cond.a405 = {}
cond.a405.version = 1.00
cond.a405.class = CLASS_ACTION
cond.a405.name = "SetPlayersToEnemies";
cond.a405.sentance = "set player and player to enemies";
cond.a405.numargs = 2;
cond.a405.args = {}
cond.a405.args[1] = ARG_PLAYER;
cond.a405.args[2] = ARG_PLAYER;

cond.a406 = {}
cond.a406.version = 1.00
cond.a406.class = CLASS_ACTION
cond.a406.name = "SetPlayersToAllies";
cond.a406.sentance = "set player and player to allies";
cond.a406.numargs = 2;
cond.a406.args = {}
cond.a406.args[1] = ARG_PLAYER;
cond.a406.args[2] = ARG_PLAYER;

cond.a407 = {}
cond.a407.version = 1.00
cond.a407.class = CLASS_ACTION
cond.a407.name = "SetSharedVision";
cond.a407.sentance = "set shared vision between player and player to state"; 
cond.a407.numargs = 3;
cond.a407.args = {}
cond.a407.args[1] = ARG_PLAYER;
cond.a407.args[2] = ARG_PLAYER;
cond.a407.args[3] = ARG_TRUTH;

cond.a416 = {}
cond.a416.version = 1.00
cond.a416.class = CLASS_ACTION
cond.a416.name = "UI, reset game time";
cond.a416.sentance = "reset game time to zero";
cond.a416.numargs = 0;

cond.a430 = {}
cond.a430.version = 1.00
cond.a430.class = CLASS_ACTION
cond.a430.name = "RevealFoggedArea";
cond.a430.sentance = "reveal area within quantity meters from location for quantity seconds";
cond.a430.numargs = 3;
cond.a430.args = {}
cond.a430.args[1] = ARG_INT;
cond.a430.args[2] = ARG_ENTITY;
cond.a430.args[3] = ARG_INT;

cond.a432 = {}
cond.a432.version = 1.00
cond.a432.class = CLASS_ACTION
cond.a432.name = "UnRevealFoggedArea";
cond.a432.sentance = "unreveal area within quantity meters from location";
cond.a432.numargs = 2;
cond.a432.args = {}
cond.a432.args[1] = ARG_INT;
cond.a432.args[2] = ARG_ENTITY;

cond.a470 = {}
cond.a470.version = 1.00
cond.a470.class = CLASS_ACTION
cond.a470.name = "SetNight";
cond.a470.sentance = "set night to state";
cond.a470.numargs = 1;
cond.a470.args = {}
cond.a470.args[1] = ARG_TRUTH;

cond.a480 = {}
cond.a480.version = 1.00
cond.a480.class = CLASS_ACTION
cond.a480.name = "AddSpawnEntityToGroup";
cond.a480.sentance = "add player entities when spawned to group";
cond.a480.numargs = 2;
cond.a480.args = {}
cond.a480.args[1] = ARG_PLAYER;
cond.a480.args[2] = ARG_GROUPID;

cond.a490 = {}
cond.a490.version = 1.00
cond.a490.class = CLASS_ACTION
cond.a490.name = "Get entity group (creature)";
cond.a490.sentance = "set group to all creatures owned by player";
cond.a490.numargs = 2;
cond.a490.args = {}
cond.a490.args[1] = ARG_GROUPID;
cond.a490.args[2] = ARG_PLAYER;

cond.a491 = {}
cond.a491.version = 1.00
cond.a491.class = CLASS_ACTION
cond.a491.name = "Get entity group (animal)";
cond.a491.sentance = "set group to all animals owned by player";
cond.a491.numargs = 2;
cond.a491.args = {}
cond.a491.args[1] = ARG_GROUPID;
cond.a491.args[2] = ARG_PLAYER;

cond.a492 = {}
cond.a492.version = 1.00
cond.a492.class = CLASS_ACTION
cond.a492.name = "Get entity group (henchman)";
cond.a492.sentance = "set group to all henchmen owned by player";
cond.a492.numargs = 2;
cond.a492.args = {}
cond.a492.args[1] = ARG_GROUPID;
cond.a492.args[2] = ARG_PLAYER;

cond.a493 = {}
cond.a493.version = 1.00
cond.a493.class = CLASS_ACTION
cond.a493.name = "Get entity group (structure)";
cond.a493.sentance = "set group to all structures owned by player";
cond.a493.numargs = 2;
cond.a493.args = {}
cond.a493.args[1] = ARG_GROUPID;
cond.a493.args[2] = ARG_PLAYER;

cond.a494 = {}
cond.a494.version = 1.00
cond.a494.class = CLASS_ACTION
cond.a494.name = "Get entity group (creature type)";
cond.a494.sentance = "set group to all entities owned by player of type creaturetype";
cond.a494.numargs = 3;
cond.a494.args = {}
cond.a494.args[1] = ARG_GROUPID;
cond.a494.args[2] = ARG_PLAYER;
cond.a494.args[3] = ARG_EBPNETID;

cond.a495 = {}
cond.a495.version = 1.00
cond.a495.class = CLASS_ACTION
cond.a495.name = "Get entity group (all)";
cond.a495.sentance = "set group to all entities owned by player";
cond.a495.numargs = 2;
cond.a495.args = {}
cond.a495.args[1] = ARG_GROUPID;
cond.a495.args[2] = ARG_PLAYER;

--=============================================================================
--- research triggers
--=============================================================================

cond.a520 = {}
cond.a520.version = 1.00
cond.a520.class = CLASS_ACTION
cond.a520.name = "BlockResearch";
cond.a520.sentance = "block researchtype for player";
cond.a520.numargs = 2;
cond.a520.args = {}
cond.a520.args[1] = ARG_ENUM;
cond.a520.args[2] = ARG_PLAYER;

cond.a522 = {}
cond.a522.version = 1.00
cond.a522.class = CLASS_ACTION
cond.a522.name = "UnblockResearch";
cond.a522.sentance = "unblock researchtype for player";
cond.a522.numargs = 2;
cond.a522.args = {}
cond.a522.args[1] = ARG_ENUM;
cond.a522.args[2] = ARG_PLAYER;

cond.a524 = {}
cond.a524.version = 1.00
cond.a524.class = CLASS_ACTION
cond.a524.name = "GiveResearch";
cond.a524.sentance = "give researchtype to player";
cond.a524.numargs = 2;
cond.a524.args = {}
cond.a524.args[1] = ARG_ENUM;
cond.a524.args[2] = ARG_PLAYER;

--=============================================================================

cond.a528 = {}
cond.a528.version = 1.00
cond.a528.class = CLASS_ACTION
cond.a528.name = "BlockAddOn";
cond.a528.sentance = "set the blocking of addontype to state for player";
cond.a528.numargs = 3;
cond.a528.args = {}
cond.a528.args[1] = ARG_ENUM;
cond.a528.args[2] = ARG_TRUTH;
cond.a528.args[3] = ARG_PLAYER;

cond.a570 = {}
cond.a570.version = 1.00
cond.a570.class = CLASS_ACTION
cond.a570.name = "Deselect all";
cond.a570.sentance = "deselect all entities";
cond.a570.numargs = 0;

cond.a580 = {}
cond.a580.version = 1.00
cond.a580.class = CLASS_ACTION
cond.a580.name = "SetGroupEndurance";
cond.a580.sentance = "set group endurace to quantity percent";
cond.a580.numargs = 2;
cond.a580.args = {}
cond.a580.args[1] = ARG_GROUPID;
cond.a580.args[2] = ARG_INT;

cond.a590 = {}
cond.a590.version = 1.00
cond.a590.class = CLASS_ACTION
cond.a590.name = "EnableFogOfWarUpdate";
cond.a590.sentance = "set fog-of-war update to state";
cond.a590.numargs = 1;
cond.a590.args = {}
cond.a590.args[1] = ARG_TRUTH;

cond.a594 = {}
cond.a594.version = 1.00
cond.a594.class = CLASS_ACTION
cond.a594.name = "TurnOnAIControl";
cond.a594.sentance = "allow group to be controlled by AI";
cond.a594.numargs = 1;
cond.a594.args = {}
cond.a594.args[1] = ARG_GROUPID;

cond.a595 = {}
cond.a595.version = 1.00
cond.a595.class = CLASS_ACTION
cond.a595.name = "TurnOffAIControl";
cond.a595.sentance = "disallow group to be controlled by AI";
cond.a595.numargs = 1;
cond.a595.args = {}
cond.a595.args[1] = ARG_GROUPID;

--=============================================================================
-- Dynamic abilities actions
--=============================================================================

cond.a627 = {}
cond.a627.version = 1.00
cond.a627.class = CLASS_ACTION
cond.a627.name = "Swimming ability";
cond.a627.sentance = "Set swimming ability of group to state";
cond.a627.numargs = 2;
cond.a627.args = {}
cond.a627.args[1] = ARG_GROUPID;
cond.a627.args[2] = ARG_TRUTH;

cond.a630 = {}
cond.a630.version = 1.00
cond.a630.class = CLASS_ACTION
cond.a630.name = "Block character abilities";
cond.a630.sentance = "set the blocking of character-ability of player to state";
cond.a630.numargs = 3;
cond.a630.args = {}
cond.a630.args[1] = ARG_ENUM;
cond.a630.args[2] = ARG_PLAYER;
cond.a630.args[3] = ARG_TRUTH;

cond.a640 = {}
cond.a640.version = 1.00
cond.a640.class = CLASS_ACTION
cond.a640.name = "Enable radar pulse";
cond.a640.sentance = "set radar pulse to state";
cond.a640.numargs = 1;
cond.a640.args = {}
cond.a640.args[1] = ARG_TRUTH;

--=============================================================================
-- Blip actions
--=============================================================================

cond.a690 = {}
cond.a690.version = 1.00
cond.a690.class = CLASS_ACTION
cond.a690.name = "Blip, create";
cond.a690.sentance = "create blip number at location"
cond.a690.numargs = 2;
cond.a690.args = {}
cond.a690.args[1] = ARG_INT;
cond.a690.args[2] = ARG_ENTITY;

cond.a692 = {}
cond.a692.version = 1.00
cond.a692.class = CLASS_ACTION
cond.a692.name = "Blip, remove";
cond.a692.sentance = "remove blip number"
cond.a692.numargs = 1;
cond.a692.args = {}
cond.a692.args[1] = ARG_INT;

--=============================================================================
-- Objective actions
--=============================================================================

cond.a700 = {}
cond.a700.version = 1.00
cond.a700.class = CLASS_ACTION
cond.a700.name = "Objective, create primary obj";
cond.a700.sentance = "create primary objective number with short-desc number and tip number"
cond.a700.numargs = 3;
cond.a700.args = {}
cond.a700.args[1] = ARG_INT;
cond.a700.args[2] = ARG_INT;
cond.a700.args[3] = ARG_INT;

cond.a702 = {}
cond.a702.version = 1.00
cond.a702.class = CLASS_ACTION
cond.a702.name = "Objective, remove obj";
cond.a702.sentance = "remove objective number"
cond.a702.numargs = 1;
cond.a702.args = {}
cond.a702.args[1] = ARG_INT;

cond.a704 = {}
cond.a704.version = 1.00
cond.a704.class = CLASS_ACTION
cond.a704.name = "Objective, create secondary obj";
cond.a704.sentance = "create secondary objective number with short-desc number and tip number"
cond.a704.numargs = 3;
cond.a704.args = {}
cond.a704.args[1] = ARG_INT;
cond.a704.args[2] = ARG_INT;
cond.a704.args[3] = ARG_INT;

cond.a706 = {}
cond.a706.version = 1.00
cond.a706.class = CLASS_ACTION
cond.a706.name = "Objective, set objective state";
cond.a706.sentance = "set objective-state for objective number to objectivestate"
cond.a706.numargs = 2;
cond.a706.args = {}
cond.a706.args[1] = ARG_INT;
cond.a706.args[2] = ARG_ENUM;

cond.a708 = {}
cond.a708.version = 1.00
cond.a708.class = CLASS_ACTION
cond.a708.name = "Objective, bind obj to location";
cond.a708.sentance = "bind objective number to location"
cond.a708.numargs = 2;
cond.a708.args = {}
cond.a708.args[1] = ARG_INT;
cond.a708.args[2] = ARG_ENTITY;

--=============================================================================
-- Sigma HUD actions
--=============================================================================

cond.a814 = {}
cond.a814.version = 1.00
cond.a814.class = CLASS_ACTION
cond.a814.name = "UI, enable henchman-kill button";
cond.a814.sentance = "set the henchman-kill-button to state"
cond.a814.numargs = 1;
cond.a814.args = {}
cond.a814.args[1] = ARG_TRUTH;

cond.a815 = {}
cond.a815.version = 1.00
cond.a815.class = CLASS_ACTION
cond.a815.name = "UI, enable henchman-build buttons";
cond.a815.sentance = "set the henchman-build-buttons to state"
cond.a815.numargs = 1;
cond.a815.args = {}
cond.a815.args[1] = ARG_TRUTH;

cond.a816 = {}
cond.a816.version = 1.00
cond.a816.class = CLASS_ACTION
cond.a816.name = "UI, enable event cue audio";
cond.a816.sentance = "set the event-cue-audio to state"
cond.a816.numargs = 1;
cond.a816.args = {}
cond.a816.args[1] = ARG_TRUTH;

cond.a817 = {}
cond.a817.version = 1.00
cond.a817.class = CLASS_ACTION
cond.a817.name = "UI, enable button";
cond.a817.sentance = "set the enable-type button to state"
cond.a817.numargs = 2;
cond.a817.args = {}
cond.a817.args[1] = ARG_ENUM;
cond.a817.args[2] = ARG_TRUTH;

cond.a850 = {}
cond.a850.version = 1.00
cond.a850.class = CLASS_ACTION
cond.a850.name = "UI, pulse hud";
cond.a850.sentance = "set pulse-state of hud to state"
cond.a850.numargs = 2;
cond.a850.args = {}
cond.a850.args[1] = ARG_ENUM;
cond.a850.args[2] = ARG_TRUTH;

--=============================================================================

cond.a920 = {}
cond.a920.version = 1.00
cond.a920.class = CLASS_ACTION
cond.a920.name = "walking stock animals";
cond.a920.sentance = "set walking-stock-animals to state"
cond.a920.numargs = 1;
cond.a920.args = {}
cond.a920.args[1] = ARG_TRUTH;

cond.a930 = {}
cond.a930.version = 1.00
cond.a930.class = CLASS_ACTION
cond.a930.name = "Group speed override";
cond.a930.sentance = "set group speed to float-number km/h"
cond.a930.numargs = 2;
cond.a930.args = {}
cond.a930.args[1] = ARG_GROUPID;
cond.a930.args[2] = ARG_FLOAT;

cond.a940 = {}
cond.a940.version = 1.00
cond.a940.class = CLASS_ACTION
cond.a940.name = "Group speed reset";
cond.a940.sentance = "reset group speed"
cond.a940.numargs = 1;
cond.a940.args = {}
cond.a940.args[1] = ARG_GROUPID;

cond.a950 = {}
cond.a950.version = 1.00
cond.a950.class = CLASS_ACTION
cond.a950.name = "GroupStopLooking";
cond.a950.sentance = "get group to stop looking at target";
cond.a950.numargs = 1;
cond.a950.args = {}
cond.a950.args[1] = ARG_GROUPID;

cond.a1000 = {}
cond.a1000.version = 1.00
cond.a1000.class = CLASS_ACTION
cond.a1000.name = "GiveCreatureUpgrade";
cond.a1000.sentance = "give upgradetype to creaturetype of player"
cond.a1000.numargs = 3;
cond.a1000.args = {}
cond.a1000.args[1] = ARG_ENUM;
cond.a1000.args[2] = ARG_EBPNETID;
cond.a1000.args[3] = ARG_PLAYER;

cond.a1010 = {}
cond.a1010.version = 1.00
cond.a1010.class = CLASS_ACTION
cond.a1010.name = "Order group to pause (or not)";
cond.a1010.sentance = "order group pause to state"
cond.a1010.numargs = 2;
cond.a1010.args = {}
cond.a1010.args[1] = ARG_GROUPID;
cond.a1010.args[2] = ARG_TRUTH;

cond.a1020 = {}
cond.a1020.version = 1.00
cond.a1020.class = CLASS_ACTION
cond.a1020.name = "Group exclude invisible entities";
cond.a1020.sentance = "exclude entities invisible to player from group"
cond.a1020.numargs = 2;
cond.a1020.args = {}
cond.a1020.args[1] = ARG_PLAYER;
cond.a1020.args[2] = ARG_GROUPID;

cond.a1030 = {}
cond.a1030.version = 1.00
cond.a1030.class = CLASS_ACTION
cond.a1030.name = "SetGroupDeathFadeDelay";
cond.a1030.sentance = "delay the death fade of group by number ticks"
cond.a1030.numargs = 2;
cond.a1030.args = {}
cond.a1030.args[1] = ARG_GROUPID;
cond.a1030.args[2] = ARG_INT;

cond.a1040 = {}
cond.a1040.version = 1.00
cond.a1040.class = CLASS_ACTION
cond.a1040.name = "Wait for pilot";
cond.a1040.sentance = "wait until group has pilot in all vehicles"
cond.a1040.numargs = 1;
cond.a1040.args = {}
cond.a1040.args[1] = ARG_GROUPID;

cond.a1050 = {}
cond.a1050.version = 1.00
cond.a1050.class = CLASS_ACTION
cond.a1050.name = "Permit tagging";
cond.a1050.sentance = "set the permission to tag group to state"
cond.a1050.numargs = 2;
cond.a1050.args = {}
cond.a1050.args[1] = ARG_GROUPID;
cond.a1050.args[2] = ARG_TRUTH;
