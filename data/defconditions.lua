
-- NOTE: eventually we can have the sentance create the list of arguments based on
-- on the keywords it uses. (Unless this not intuitive enough)

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

----------------- CONDITIONS -------------------------

cond = {}

cond.c10 = {}
cond.c10.version = 1.00
cond.c10.class = CLASS_CONDITION
cond.c10.name = "GameTime";
cond.c10.sentance = "if quantity seconds has passed";
cond.c10.numargs = 1;
cond.c10.args = {}
cond.c10.args[1] = ARG_INT;

cond.c20 = {}
cond.c20.version = 1.00
cond.c20.class = CLASS_CONDITION
cond.c20.name = "Always";
cond.c20.sentance = "always";
cond.c20.numargs = 0;

cond.c25 = {}
cond.c25.version = 1.00
cond.c25.class = CLASS_CONDITION
cond.c25.name = "NextEval";
cond.c25.sentance = "next eval";
cond.c25.numargs = 0;

cond.c50 = {}
cond.c50.version = 1.00
cond.c50.class = CLASS_CONDITION
cond.c50.name = "EntityDistance";
cond.c50.sentance = "entity is compared quantity meters away from location";
cond.c50.numargs = 4;
cond.c50.args = {}
cond.c50.args[1] = ARG_ENTITY;
cond.c50.args[2] = ARG_COMPARE;
cond.c50.args[3] = ARG_INT;
cond.c50.args[4] = ARG_ENTITY;

cond.c60 = {}
cond.c60.version = 1.00
cond.c60.class = CLASS_CONDITION
cond.c60.name = "EntityTypeDistance";
cond.c60.sentance = "creaturetype is compared quantity meters away from location";
cond.c60.numargs = 4;
cond.c60.args = {}
cond.c60.args[1] = ARG_EBPNETID;
cond.c60.args[2] = ARG_COMPARE;
cond.c60.args[3] = ARG_INT;
cond.c60.args[4] = ARG_ENTITY;

cond.c80 = {}
cond.c80.version = 1.00
cond.c80.class = CLASS_CONDITION
cond.c80.name = "IsFlagSet";
cond.c80.sentance = "if flag number is state";
cond.c80.numargs = 2;
cond.c80.args = {}
cond.c80.args[1] = ARG_INT;
cond.c80.args[2] = ARG_TRUTH;

cond.c90 = {}
cond.c90.version = 1.00
cond.c90.class = CLASS_CONDITION
cond.c90.name = "Countdown";
cond.c90.sentance = "countdown quantity seconds";
cond.c90.numargs = 1;
cond.c90.args = {}
cond.c90.args[1] = ARG_INT;

cond.c91 = {}
cond.c91.version = 1.00
cond.c91.class = CLASS_CONDITION
cond.c91.name = "Countdown (float)";
cond.c91.sentance = "countdown float-number seconds";
cond.c91.numargs = 1;
cond.c91.args = {}
cond.c91.args[1] = ARG_FLOAT;

cond.c92 = {}
cond.c92.version = 1.00
cond.c92.class = CLASS_CONDITION
cond.c92.name = "Countdown (random)";
cond.c92.sentance = "countdown between quantity to quantity seconds";
cond.c92.numargs = 2;
cond.c92.args = {}
cond.c92.args[1] = ARG_INT;
cond.c92.args[2] = ARG_INT;

cond.c94 = {}
cond.c94.version = 1.00
cond.c94.class = CLASS_CONDITION
cond.c94.name = "Countdown (non-skippable)";
cond.c94.sentance = "countdown quantity seconds";
cond.c94.numargs = 1;
cond.c94.args = {}
cond.c94.args[1] = ARG_INT;

cond.c96 = {}
cond.c96.version = 1.00
cond.c96.class = CLASS_CONDITION
cond.c96.name = "Countdown (random, non-skippable)";
cond.c96.sentance = "countdown between quantity to quantity seconds";
cond.c96.numargs = 2;
cond.c96.args = {}
cond.c96.args[1] = ARG_INT;
cond.c96.args[2] = ARG_INT;

cond.c120 = {}
cond.c120.version = 1.00
cond.c120.class = CLASS_CONDITION
cond.c120.name = "Keypress";
cond.c120.sentance = "if keypress"
cond.c120.numargs = 1;
cond.c120.args = {}
cond.c120.args[1] = ARG_KEYPRESS;

cond.c130 = {}
cond.c130.version = 1.00
cond.c130.class = CLASS_CONDITION
cond.c130.name = "IsFocusLocked";
cond.c130.sentance = "is camera focus locked"
cond.c130.numargs = 0;

cond.c140 = {}
cond.c140.version = 1.00
cond.c140.class = CLASS_CONDITION
cond.c140.name = "GroupCount";
cond.c140.sentance = "if group has compared quantity left"
cond.c140.numargs = 3;
cond.c140.args = {}
cond.c140.args[1] = ARG_GROUPID;
cond.c140.args[2] = ARG_COMPARE;
cond.c140.args[3] = ARG_INT;

cond.c160 = {}
cond.c160.version = 1.00
cond.c160.class = CLASS_CONDITION
cond.c160.name = "CameraAnimPos";
cond.c160.sentance = "if cameraanim is compared quantity meters from the start"
cond.c160.numargs = 3;
cond.c160.args = {}
cond.c160.args[1] = ARG_CAMERAANIMID;
cond.c160.args[2] = ARG_COMPARE;
cond.c160.args[3] = ARG_INT;

cond.c170 = {}
cond.c170.version = 1.00
cond.c170.class = CLASS_CONDITION
cond.c170.name = "CameraAnimPlaying";
cond.c170.sentance = "if cameraanim is playing"
cond.c170.numargs = 1;
cond.c170.args = {}
cond.c170.args[1] = ARG_CAMERAANIMID;

cond.c171 = {}
cond.c171.version = 1.00
cond.c171.class = CLASS_CONDITION
cond.c171.name = "CameraAnimStopped";
cond.c171.sentance = "if cameraanim is stopped"
cond.c171.numargs = 1;
cond.c171.args = {}
cond.c171.args[1] = ARG_CAMERAANIMID;

cond.c180 = {}
cond.c180.version = 1.00
cond.c180.class = CLASS_CONDITION
cond.c180.name = "ObjAnimPos";
cond.c180.sentance = "if objanim is compared quantity meters from the start"
cond.c180.numargs = 3;
cond.c180.args = {}
cond.c180.args[1] = ARG_OBJANIMID;
cond.c180.args[2] = ARG_COMPARE;
cond.c180.args[3] = ARG_INT;

cond.c190 = {}
cond.c190.version = 1.00
cond.c190.class = CLASS_CONDITION
cond.c190.name = "ObjAnimPlaying";
cond.c190.sentance = "if objanim is playing"
cond.c190.numargs = 1;
cond.c190.args = {}
cond.c190.args[1] = ARG_OBJANIMID;

cond.c191 = {}
cond.c191.version = 1.00
cond.c191.class = CLASS_CONDITION
cond.c191.name = "ObjAnimStopped";
cond.c191.sentance = "if objanim is stopped"
cond.c191.numargs = 1;
cond.c191.args = {}
cond.c191.args[1] = ARG_OBJANIMID;

cond.c200 = {}
cond.c200.version = 1.00
cond.c200.class = CLASS_CONDITION
cond.c200.name = "MoveAnimPos";
cond.c200.sentance = "if moveanim is compared quantity meters from the start"
cond.c200.numargs = 3;
cond.c200.args = {}
cond.c200.args[1] = ARG_MOVEANIMID;
cond.c200.args[2] = ARG_COMPARE;
cond.c200.args[3] = ARG_INT;

cond.c210 = {}
cond.c210.version = 1.00
cond.c210.class = CLASS_CONDITION
cond.c210.name = "MoveAnimPlaying";
cond.c210.sentance = "if moveanim is playing"
cond.c210.numargs = 1;
cond.c210.args = {}
cond.c210.args[1] = ARG_MOVEANIMID;

cond.c211 = {}
cond.c211.version = 1.00
cond.c211.class = CLASS_CONDITION
cond.c211.name = "MoveAnimStopped";
cond.c211.sentance = "if moveanim is stopped"
cond.c211.numargs = 1;
cond.c211.args = {}
cond.c211.args[1] = ARG_MOVEANIMID;

cond.c215 = {}
cond.c215.version = 1.00
cond.c215.class = CLASS_CONDITION
cond.c215.name = "AnimationStopped";
cond.c215.sentance = "if entity anim has stopped"
cond.c215.numargs = 1;
cond.c215.args = {}
cond.c215.args[1] = ARG_ENTITY;

cond.c216 = {}
cond.c216.version = 1.00
cond.c216.class = CLASS_CONDITION
cond.c216.name = "NIS stopped";
cond.c216.sentance = "if entity NIS has stopped"
cond.c216.numargs = 1;
cond.c216.args = {}
cond.c216.args[1] = ARG_ENTITY;

cond.c222 = {}
cond.c222.version = 1.00
cond.c222.class = CLASS_CONDITION
cond.c222.name = "GroupInProximity";
cond.c222.sentance = "if any-member of group is within quantity meters from location"
cond.c222.numargs = 3;
cond.c222.args = {}
cond.c222.args[1] = ARG_GROUPID;
cond.c222.args[2] = ARG_INT;
cond.c222.args[3] = ARG_ENTITY;

cond.c224 = {}
cond.c224.version = 1.00
cond.c224.class = CLASS_CONDITION
cond.c224.name = "GroupGroupProximity";
cond.c224.sentance = "if the closest distance between group and group is within quantity meters"
cond.c224.numargs = 3;
cond.c224.args = {}
cond.c224.args[1] = ARG_GROUPID;
cond.c224.args[2] = ARG_GROUPID;
cond.c224.args[3] = ARG_INT;

cond.c230 = {}
cond.c230.version = 1.00
cond.c230.class = CLASS_CONDITION
cond.c230.name = "If variable (v compared to quantity)";
cond.c230.sentance = "if variable is compared quantity"
cond.c230.numargs = 3;
cond.c230.args = {}
cond.c230.args[1] = ARG_TRIGGERVARID;
cond.c230.args[2] = ARG_COMPARE;
cond.c230.args[3] = ARG_INT;

cond.c232 = {}
cond.c232.version = 1.00
cond.c232.class = CLASS_CONDITION
cond.c232.name = "If variable (va compared to vb)";
cond.c232.sentance = "if variable is compared variable"
cond.c232.numargs = 3;
cond.c232.args = {}
cond.c232.args[1] = ARG_TRIGGERVARID;
cond.c232.args[2] = ARG_COMPARE;
cond.c232.args[3] = ARG_TRIGGERVARID;

cond.c250 = {}
cond.c250.version = 1.00
cond.c250.class = CLASS_CONDITION
cond.c250.name = "DialogFinished";
cond.c250.sentance = "if dialog has finished playing"
cond.c250.numargs = 1;
cond.c250.args = {}
cond.c250.args[1] = ARG_DIALOGID;

cond.c252 = {}
cond.c252.version = 1.00
cond.c252.class = CLASS_CONDITION
cond.c252.name = "NoDialogPlaying";
cond.c252.sentance = "if no-dialog is playing"
cond.c252.numargs = 0;

cond.c270 = {}
cond.c270.version = 1.00
cond.c270.class = CLASS_CONDITION
cond.c270.name = "UI push scrolled";
cond.c270.sentance = "if push-scrolled"
cond.c270.numargs = 0;

cond.c271 = {}
cond.c271.version = 1.00
cond.c271.class = CLASS_CONDITION
cond.c271.name = "UI mouse camera zoomed";
cond.c271.sentance = "if camera was zoomed using the mouse"
cond.c271.numargs = 0;

cond.c272 = {}
cond.c272.version = 1.00
cond.c272.class = CLASS_CONDITION
cond.c272.name = "UI mouse camera rotated";
cond.c272.sentance = "if camera was rotated using the mouse"
cond.c272.numargs = 0;

cond.c273 = {}
cond.c273.version = 1.00
cond.c273.class = CLASS_CONDITION
cond.c273.name = "Entity close in view";
cond.c273.sentance = "if entity is within quantity meters in front of the camera"
cond.c273.numargs = 2;
cond.c273.args = {}
cond.c273.args[1] = ARG_ENTITY;
cond.c273.args[2] = ARG_INT;

cond.c274 = {}
cond.c274.version = 1.00
cond.c274.class = CLASS_CONDITION
cond.c274.name = "Group close in view";
cond.c274.sentance = "if any member of group is within quantity meters in front of the camera"
cond.c274.numargs = 2;
cond.c274.args = {}
cond.c274.args[1] = ARG_GROUPID;
cond.c274.args[2] = ARG_INT;

cond.c281 = {}
cond.c281.version = 1.00
cond.c281.class = CLASS_CONDITION
cond.c281.name = "Visited army builder";
cond.c281.sentance = "if this-player has visited the army-builder"
cond.c281.numargs = 0;



cond.c320 = {}
cond.c320.version = 1.00
cond.c320.class = CLASS_CONDITION
cond.c320.name = "First trigger-eval-cycle";
cond.c320.sentance = "if first trigger-eval-cycle"
cond.c320.numargs = 0;

--=============================================================================
-- Sigma HUD conditions
--=============================================================================

cond.c336 = {}
cond.c336.version = 1.00
cond.c336.class = CLASS_CONDITION
cond.c336.name = "UI Default camera selected";
cond.c336.sentance = "if the default camera is selected"
cond.c336.numargs = 0;

cond.c340 = {}
cond.c340.version = 1.00
cond.c340.class = CLASS_CONDITION
cond.c340.name = "UI, credits finished";
cond.c340.sentance = "credits is finished"
cond.c340.numargs = 0;

cond.c350 = {}
cond.c350.version = 1.00
cond.c350.class = CLASS_CONDITION
cond.c350.name = "Speech, no speech is playing";
cond.c350.sentance = "no speech playing"
cond.c350.numargs = 0;

--=============================================================================

cond.c510 = {}
cond.c510.version = 1.00
cond.c510.class = CLASS_CONDITION
cond.c510.name = "Movie Stopped";
cond.c510.sentance = "if movie-playback has stopped"
cond.c510.numargs = 0;

cond.c520 = {}
cond.c520.version = 1.00
cond.c520.class = CLASS_CONDITION
cond.c520.name = "Ready for movie playback";
cond.c520.sentance = "if ready for movie-playback"
cond.c520.numargs = 0;

cond.c530 = {}
cond.c530.version = 1.00
cond.c530.class = CLASS_CONDITION
cond.c530.name = "GroupSpawned";
cond.c530.sentance = "if all members of group are spawned"
cond.c530.numargs = 1;
cond.c530.args = {}
cond.c530.args[1] = ARG_GROUPID;

----------------- ACTIONS -------------------------

cond.a10 = {}
cond.a10.version = 1.00
cond.a10.class = CLASS_ACTION
cond.a10.name = "Play Sound";
cond.a10.sentance = "play sound";
cond.a10.numargs = 1;
cond.a10.args = {}
cond.a10.args[1] = ARG_SOUND;

cond.a11 = {}
cond.a11.version = 1.00
cond.a11.class = CLASS_ACTION
cond.a11.name = "Play Sound at entity";
cond.a11.sentance = "play sound at entity";
cond.a11.numargs = 2;
cond.a11.args = {}
cond.a11.args[1] = ARG_SOUND;
cond.a11.args[2] = ARG_ENTITY;

cond.a13 = {}
cond.a13.version = 1.00
cond.a13.class = CLASS_ACTION
cond.a13.name = "Play Music";
cond.a13.sentance = "play looping music";
cond.a13.numargs = 1;
cond.a13.args = {}
cond.a13.args[1] = ARG_SOUND;

cond.a15 = {}
cond.a15.version = 1.00
cond.a15.class = CLASS_ACTION
cond.a15.name = "Play Stinger";
cond.a15.sentance = "play one shot stinger";
cond.a15.numargs = 1;
cond.a15.args = {}
cond.a15.args[1] = ARG_SOUND;

cond.a17 = {}
cond.a17.version = 1.00
cond.a17.class = CLASS_ACTION
cond.a17.name = "Enable ambient sound";
cond.a17.sentance = "set ambient-sound to state";
cond.a17.numargs = 1;
cond.a17.args = {}
cond.a17.args[1] = ARG_TRUTH;

cond.a19 = {}
cond.a19.version = 1.00
cond.a19.class = CLASS_ACTION
cond.a19.name = "Set battle track";
cond.a19.sentance = "set battle-track to music";
cond.a19.numargs = 1;
cond.a19.args = {}
cond.a19.args[1] = ARG_SOUND;

cond.a20 = {}
cond.a20.version = 1.00
cond.a20.class = CLASS_ACTION
cond.a20.name = "Show Message";
cond.a20.sentance = "show message";
cond.a20.numargs = 1;
cond.a20.args = {}
cond.a20.args[1] = ARG_MESSAGE;

cond.a22 = {}
cond.a22.version = 1.00
cond.a22.class = CLASS_ACTION
cond.a22.name = "Show NISlet text";
cond.a22.sentance = "show NISlet text message";
cond.a22.numargs = 1;
cond.a22.args = {}
cond.a22.args[1] = ARG_MESSAGE;

cond.a24 = {}
cond.a24.version = 1.00
cond.a24.class = CLASS_ACTION
cond.a24.name = "Hide NISlet text";
cond.a24.sentance = "hide NISlet text";
cond.a24.numargs = 0;

cond.a26 = {}
cond.a26.version = 1.00
cond.a26.class = CLASS_ACTION
cond.a26.name = "Show NISlet image";
cond.a26.sentance = "show NISlet image of creaturetype";
cond.a26.numargs = 1;
cond.a26.args = {}
cond.a26.args[1] = ARG_EBPNETID;

cond.a28 = {}
cond.a28.version = 1.00
cond.a28.class = CLASS_ACTION
cond.a28.name = "Show NISlet image";
cond.a28.sentance = "show NISlet image of creaturetype";
cond.a28.numargs = 1;
cond.a28.args = {}
cond.a28.args[1] = ARG_EBPNETID;

cond.a50 = {}
cond.a50.version = 1.00
cond.a50.class = CLASS_ACTION
cond.a50.name = "Create entity";
cond.a50.sentance = "Create creaturetype at this location";
cond.a50.numargs = 2;
cond.a50.args = {}
cond.a50.args[1] = ARG_EBPNETID;
cond.a50.args[2] = ARG_ENTITY;

cond.a60 = {}
cond.a60.version = 1.00
cond.a60.class = CLASS_ACTION
cond.a60.name = "Set camera focus";
cond.a60.sentance = "set focus to location";
cond.a60.numargs = 1;
cond.a60.args = {}
cond.a60.args[1] = ARG_ENTITY;

cond.a61 = {}
cond.a61.version = 1.00
cond.a61.class = CLASS_ACTION
cond.a61.name = "Set camera focus (group)";
cond.a61.sentance = "set focus to group";
cond.a61.numargs = 1;
cond.a61.args = {}
cond.a61.args[1] = ARG_GROUPID;

cond.a63 = {}
cond.a63.version = 1.00
cond.a63.class = CLASS_ACTION
cond.a63.name = "Set camera zoom";
cond.a63.sentance = "set zoom to quantity";
cond.a63.numargs = 1;
cond.a63.args = {}
cond.a63.args[1] = ARG_INT;

cond.a65 = {}
cond.a65.version = 1.00
cond.a65.class = CLASS_ACTION
cond.a65.name = "Set camera origin";
cond.a65.sentance = "set origin to location";
cond.a65.numargs = 1;
cond.a65.args = {}
cond.a65.args[1] = ARG_ENTITY;

cond.a67 = {}
cond.a67.version = 1.00
cond.a67.class = CLASS_ACTION
cond.a67.name = "Previous camera focus";
cond.a67.sentance = "previous camera focus";
cond.a67.numargs = 0;

cond.a68 = {}
cond.a68.version = 1.00
cond.a68.class = CLASS_ACTION
cond.a68.name = "Push camera setting";
cond.a68.sentance = "push camera setting";
cond.a68.numargs = 0;

cond.a69 = {}
cond.a69.version = 1.00
cond.a69.class = CLASS_ACTION
cond.a69.name = "Pop camera setting";
cond.a69.sentance = "pop camera setting";
cond.a69.numargs = 0;

cond.a90 = {}
cond.a90.version = 1.00
cond.a90.class = CLASS_ACTION
cond.a90.name = "Cinematic mode";
cond.a90.sentance = "turn cinematic to state";
cond.a90.numargs = 1;
cond.a90.args = {}
cond.a90.args[1] = ARG_TRUTH;

cond.a92 = {}
cond.a92.version = 1.00
cond.a92.class = CLASS_ACTION
cond.a92.name = "Cinematic mode transition time";
cond.a92.sentance = "set cinematic mode transition time to float-number seconds";
cond.a92.numargs = 1;
cond.a92.args = {}
cond.a92.args[1] = ARG_FLOAT;

cond.a110 = {}
cond.a110.version = 1.00
cond.a110.class = CLASS_ACTION
cond.a110.name = "DeleteEntity";
cond.a110.sentance = "delete entity";
cond.a110.numargs = 1;
cond.a110.args = {}
cond.a110.args[1] = ARG_ENTITY;

cond.a120 = {}
cond.a120.version = 1.00
cond.a120.class = CLASS_ACTION
cond.a120.name = "TriggerState";
cond.a120.sentance = "change trigger to state";
cond.a120.numargs = 2;
cond.a120.args = {}
cond.a120.args[1] = ARG_TRIGGERID;
cond.a120.args[2] = ARG_TRUTH;

cond.a130 = {}
cond.a130.version = 1.00
cond.a130.class = CLASS_ACTION
cond.a130.name = "SetFlag";
cond.a130.sentance = "set flag number to state";
cond.a130.numargs = 2;
cond.a130.args = {}
cond.a130.args[1] = ARG_INT;
cond.a130.args[2] = ARG_TRUTH;

cond.a140 = {}
cond.a140.version = 1.00
cond.a140.class = CLASS_ACTION
cond.a140.name = "EntityVisible";
cond.a140.sentance = "entity visibily is state";
cond.a140.numargs = 2;
cond.a140.args = {}
cond.a140.args[1] = ARG_ENTITY;
cond.a140.args[2] = ARG_TRUTH;

cond.a164 = {}
cond.a164.version = 1.00
cond.a164.class = CLASS_ACTION
cond.a164.name = "SetPlayerName";
cond.a164.sentance = "set the name of this-player to message";
cond.a164.numargs = 1;
cond.a164.args = {}
cond.a164.args[1] = ARG_MESSAGE;

cond.a170 = {}
cond.a170.version = 1.00
cond.a170.class = CLASS_ACTION
cond.a170.name = "CreateEntityInGroup";
cond.a170.sentance = "creaturetype at this location into group";
cond.a170.numargs = 3;
cond.a170.args = {}
cond.a170.args[1] = ARG_EBPNETID;
cond.a170.args[2] = ARG_ENTITY;
cond.a170.args[3] = ARG_GROUPID;

cond.a180 = {}
cond.a180.version = 1.00
cond.a180.class = CLASS_ACTION
cond.a180.name = "PlayAnimation";
cond.a180.sentance = "entity play animation message";
cond.a180.numargs = 2;
cond.a180.args = {}
cond.a180.args[1] = ARG_ENTITY;
cond.a180.args[2] = ARG_MESSAGE;

cond.a181 = {}
cond.a181.version = 1.00
cond.a181.class = CLASS_ACTION
cond.a181.name = "UseAnimationCamera";
cond.a181.sentance = "use camera from entity with transition time of quantity seconds";
cond.a181.numargs = 2;
cond.a181.args = {}
cond.a181.args[1] = ARG_ENTITY;
cond.a181.args[2] = ARG_INT;

cond.a182 = {}
cond.a182.version = 1.00
cond.a182.class = CLASS_ACTION
cond.a182.name = "DoneAnimationCamera";
cond.a182.sentance = "switch back to regular camera with transition time of quantity seconds";
cond.a182.numargs = 1;
cond.a182.args = {}
cond.a182.args[1] = ARG_INT;

cond.a184 = {}
cond.a184.version = 1.00
cond.a184.class = CLASS_ACTION
cond.a184.name = "ReplayAnimation";
cond.a184.sentance = "entity replay animation message";
cond.a184.numargs = 2;
cond.a184.args = {}
cond.a184.args[1] = ARG_ENTITY;
cond.a184.args[2] = ARG_MESSAGE;

cond.a186 = {}
cond.a186.version = 1.00
cond.a186.class = CLASS_ACTION
cond.a186.name = "NIS start";
cond.a186.sentance = "transition into entity NIS in float-number seconds";
cond.a186.numargs = 2;
cond.a186.args = {}
cond.a186.args[1] = ARG_ENTITY;
cond.a186.args[2] = ARG_FLOAT;

cond.a187 = {}
cond.a187.version = 1.00
cond.a187.class = CLASS_ACTION
cond.a187.name = "NIS end";
cond.a187.sentance = "transition out of entity NIS in float-number seconds";
cond.a187.numargs = 2;
cond.a187.args = {}
cond.a187.args[1] = ARG_ENTITY;
cond.a187.args[2] = ARG_FLOAT;

cond.a200 = {}
cond.a200.version = 1.00
cond.a200.class = CLASS_ACTION
cond.a200.name = "SelectionAnimation";
cond.a200.sentance = "play animation message to all selected";
cond.a200.numargs = 1;
cond.a200.args = {}
cond.a200.args[1] = ARG_MESSAGE;

cond.a225 = {}
cond.a225.version = 1.00
cond.a225.class = CLASS_ACTION
cond.a225.name = "AddGroup2Group";
cond.a225.sentance = "add group to group";
cond.a225.numargs = 2;
cond.a225.args = {}
cond.a225.args[1] = ARG_GROUPID;
cond.a225.args[2] = ARG_GROUPID;

cond.a226 = {}
cond.a226.version = 1.00
cond.a226.class = CLASS_ACTION
cond.a226.name = "DeleteGroupContent";
cond.a226.sentance = "delete content in group";
cond.a226.numargs = 1;
cond.a226.args = {}
cond.a226.args[1] = ARG_GROUPID;

cond.a227 = {}
cond.a227.version = 1.00
cond.a227.class = CLASS_ACTION
cond.a227.name = "GroupVisible";
cond.a227.sentance = "group visibily is state";
cond.a227.numargs = 2;
cond.a227.args = {}
cond.a227.args[1] = ARG_GROUPID;
cond.a227.args[2] = ARG_TRUTH;

cond.a229 = {}
cond.a229.version = 1.00
cond.a229.class = CLASS_ACTION
cond.a229.name = "ClearGroup";
cond.a229.sentance = "remove all entities from group";
cond.a229.numargs = 1;
cond.a229.args = {}
cond.a229.args[1] = ARG_GROUPID;

cond.a230 = {}
cond.a230.version = 1.00
cond.a230.class = CLASS_ACTION
cond.a230.name = "Runscript";
cond.a230.sentance = "run script message";
cond.a230.numargs = 1;
cond.a230.args = {}
cond.a230.args[1] = ARG_MESSAGE;

cond.a240 = {}
cond.a240.version = 1.00
cond.a240.class = CLASS_ACTION
cond.a240.name = "PlayCameraAnim";
cond.a240.sentance = "play cameraanim starting at quantity meters";
cond.a240.numargs = 2;
cond.a240.args = {}
cond.a240.args[1] = ARG_CAMERAANIMID;
cond.a240.args[2] = ARG_INT;

cond.a242 = {}
cond.a242.version = 1.00
cond.a242.class = CLASS_ACTION
cond.a242.name = "CutCameraAnim";
cond.a242.sentance = "cut into cameraanim starting at quantity meters";
cond.a242.numargs = 2;
cond.a242.args = {}
cond.a242.args[1] = ARG_CAMERAANIMID;
cond.a242.args[2] = ARG_INT;

cond.a244 = {}
cond.a244.version = 1.00
cond.a244.class = CLASS_ACTION
cond.a244.name = "CameraAnim shake - enable";
cond.a244.sentance = "set camera-shake for cameraanim to state";
cond.a244.numargs = 2;
cond.a244.args = {}
cond.a244.args[1] = ARG_CAMERAANIMID;
cond.a244.args[2] = ARG_TRUTH;

cond.a245 = {}
cond.a245.version = 1.00
cond.a245.class = CLASS_ACTION
cond.a245.name = "CameraAnim shake - set amplitude";
cond.a245.sentance = "set camera-shake amplitude for cameraanim to float-number degrees";
cond.a245.numargs = 2;
cond.a245.args = {}
cond.a245.args[1] = ARG_CAMERAANIMID;
cond.a245.args[2] = ARG_FLOAT;

cond.a246 = {}
cond.a246.version = 1.00
cond.a246.class = CLASS_ACTION
cond.a246.name = "CameraAnim shake - set frequency";
cond.a246.sentance = "set camera-shake frequency for cameraanim to float-number Hz";
cond.a246.numargs = 2;
cond.a246.args = {}
cond.a246.args[1] = ARG_CAMERAANIMID;
cond.a246.args[2] = ARG_FLOAT;

cond.a247 = {}
cond.a247.version = 1.00
cond.a247.class = CLASS_ACTION
cond.a247.name = "CameraAnim shake - set transition time";
cond.a247.sentance = "set camera-shake transition-time for cameraanim to float-number seconds";
cond.a247.numargs = 2;
cond.a247.args = {}
cond.a247.args[1] = ARG_CAMERAANIMID;
cond.a247.args[2] = ARG_FLOAT;

cond.a250 = {}
cond.a250.version = 1.00
cond.a250.class = CLASS_ACTION
cond.a250.name = "StopCameraAnim";
cond.a250.sentance = "stop cameraanim";
cond.a250.numargs = 1;
cond.a250.args = {}
cond.a250.args[1] = ARG_CAMERAANIMID;

cond.a251 = {}
cond.a251.version = 1.00
cond.a251.class = CLASS_ACTION
cond.a251.name = "PauseCameraAnim";
cond.a251.sentance = "pause cameraanim";
cond.a251.numargs = 1;
cond.a251.args = {}
cond.a251.args[1] = ARG_CAMERAANIMID;

cond.a252 = {}
cond.a252.version = 1.00
cond.a252.class = CLASS_ACTION
cond.a252.name = "ResumeCameraAnim";
cond.a252.sentance = "resume cameraanim";
cond.a252.numargs = 1;
cond.a252.args = {}
cond.a252.args[1] = ARG_CAMERAANIMID;

cond.a253 = {}
cond.a253.version = 1.00
cond.a253.class = CLASS_ACTION
cond.a253.name = "PauseCameraAnimBeforeBlendOut";
cond.a253.sentance = "pause cameraanim before blend-out";
cond.a253.numargs = 1;
cond.a253.args = {}
cond.a253.args[1] = ARG_CAMERAANIMID;

cond.a254 = {}
cond.a254.version = 1.00
cond.a254.class = CLASS_ACTION
cond.a254.name = "NoPauseCameraAnimBeforeBlendOut";
cond.a254.sentance = "do not pause cameraanim before blend-out";
cond.a254.numargs = 1;
cond.a254.args = {}
cond.a254.args[1] = ARG_CAMERAANIMID;

cond.a255 = {}
cond.a255.version = 1.00
cond.a255.class = CLASS_ACTION
cond.a255.name = "Fade";
cond.a255.sentance = "fade from alpha to alpha in duration seconds";
cond.a255.numargs = 3;
cond.a255.args = {}
cond.a255.args[1] = ARG_FLOAT;
cond.a255.args[2] = ARG_FLOAT;
cond.a255.args[3] = ARG_FLOAT;

cond.a260 = {}
cond.a260.version = 1.00
cond.a260.class = CLASS_ACTION
cond.a260.name = "PlayEntityObjAnim";
cond.a260.sentance = "animate entity with objanim starting at quantity meters";
cond.a260.numargs = 3;
cond.a260.args = {}
cond.a260.args[1] = ARG_ENTITY;
cond.a260.args[2] = ARG_OBJANIMID;
cond.a260.args[3] = ARG_INT;

cond.a262 = {}
cond.a262.version = 1.00
cond.a262.class = CLASS_ACTION
cond.a262.name = "ObjAnim - set end proximity dist";
cond.a262.sentance = "set end-proximity-distance of objanim to float-number meters";
cond.a262.numargs = 2;
cond.a262.args = {}
cond.a262.args[1] = ARG_OBJANIMID;
cond.a262.args[2] = ARG_FLOAT;

cond.a265 = {}
cond.a265.version = 1.00
cond.a265.class = CLASS_ACTION
cond.a265.name = "PlayGroupObjAnim";
cond.a265.sentance = "animate group with objanim starting at quantity meters";
cond.a265.numargs = 3;
cond.a265.args = {}
cond.a265.args[1] = ARG_GROUPID;
cond.a265.args[2] = ARG_OBJANIMID;
cond.a265.args[3] = ARG_INT;

cond.a266 = {}
cond.a266.version = 1.00
cond.a266.class = CLASS_ACTION
cond.a266.name = "PlayMoveAnim option - set initial entity rotation";
cond.a266.sentance = "set initial rotation for moveanim to float-number degrees";
cond.a266.numargs = 2;
cond.a266.args = {}
cond.a266.args[1] = ARG_MOVEANIMID;
cond.a266.args[2] = ARG_FLOAT;

cond.a267 = {}
cond.a267.version = 1.00
cond.a267.class = CLASS_ACTION
cond.a267.name = "PlayMoveAnim";
cond.a267.sentance = "animate entity with moveanim starting at quantity meters";
cond.a267.numargs = 3;
cond.a267.args = {}
cond.a267.args[1] = ARG_ENTITY;
cond.a267.args[2] = ARG_MOVEANIMID;
cond.a267.args[3] = ARG_INT;

cond.a268 = {}
cond.a268.version = 1.00
cond.a268.class = CLASS_ACTION
cond.a268.name = "PauseMoveAnim";
cond.a268.sentance = "pause moveanim";
cond.a268.numargs = 1;
cond.a268.args = {}
cond.a268.args[1] = ARG_MOVEANIMID;

cond.a269 = {}
cond.a269.version = 1.00
cond.a269.class = CLASS_ACTION
cond.a269.name = "ResumeMoveAnim";
cond.a269.sentance = "resume moveanim";
cond.a269.numargs = 1;
cond.a269.args = {}
cond.a269.args[1] = ARG_MOVEANIMID;

cond.a270 = {}
cond.a270.version = 1.00
cond.a270.class = CLASS_ACTION
cond.a270.name = "StopObjAnim";
cond.a270.sentance = "stop objanim";
cond.a270.numargs = 1;
cond.a270.args = {}
cond.a270.args[1] = ARG_OBJANIMID;

cond.a275 = {}
cond.a275.version = 1.00
cond.a275.class = CLASS_ACTION
cond.a275.name = "StopMoveAnim";
cond.a275.sentance = "stop moveanim";
cond.a275.numargs = 1;
cond.a275.args = {}
cond.a275.args[1] = ARG_MOVEANIMID;

cond.a292 = {}
cond.a292.version = 1.00
cond.a292.class = CLASS_ACTION
cond.a292.name = "LoadScenarioScript";
cond.a292.sentance = "load script message";
cond.a292.numargs = 1;
cond.a292.args = {}
cond.a292.args[1] = ARG_MESSAGE;

--=============================================================================
-- Army Builder EBP granting and forbiding action's
--=============================================================================

cond.a304 = {}
cond.a304.version = 1.00
cond.a304.class = CLASS_ACTION
cond.a304.name = "Set army";
cond.a304.sentance = "Give army to this-player";
cond.a304.numargs = 1;
cond.a304.args = {}
cond.a304.args[1] = ARG_ARMY;

--=============================================================================

cond.a410 = {}
cond.a410.version = 1.00
cond.a410.class = CLASS_ACTION
cond.a410.name = "UIPause";
cond.a410.sentance = "set UI to state";
cond.a410.numargs = 1;
cond.a410.args = {}
cond.a410.args[1] = ARG_TRUTH;

cond.a412 = {}
cond.a412.version = 1.00
cond.a412.class = CLASS_ACTION
cond.a412.name = "UI, Confine mouse - set confinement";
cond.a412.sentance = "confine mouse to overlay-hud";
cond.a412.numargs = 1;
cond.a412.args = {}
cond.a412.args[1] = ARG_ENUM;

cond.a414 = {}
cond.a414.version = 1.00
cond.a414.class = CLASS_ACTION
cond.a414.name = "UI, Confine mouse - remove confinement";
cond.a414.sentance = "remove mouse confinement";
cond.a414.numargs = 0;

cond.a418 = {}
cond.a418.version = 1.00
cond.a418.class = CLASS_ACTION
cond.a418.name = "UI, minimap input state";
cond.a418.sentance = "change minimap input to state ";
cond.a418.numargs = 1;
cond.a418.args = {}
cond.a418.args[1] = ARG_TRUTH;

cond.a420 = {}
cond.a420.version = 1.00
cond.a420.class = CLASS_ACTION
cond.a420.name = "PlayDialog";
cond.a420.sentance = "play dialog";
cond.a420.numargs = 1;
cond.a420.args = {}
cond.a420.args[1] = ARG_DIALOGID;

cond.a440 = {}
cond.a440.version = 1.00
cond.a440.class = CLASS_ACTION
cond.a440.name = "Play Speech";
cond.a440.sentance = "play speech sound";
cond.a440.numargs = 1;
cond.a440.args = {}
cond.a440.args[1] = ARG_SOUND;

cond.a442 = {}
cond.a442.version = 1.00
cond.a442.class = CLASS_ACTION
cond.a442.name = "Play Dialog Speech";
cond.a442.sentance = "play speech sound with text number , character number and float-number second place holder";
cond.a442.numargs = 4;
cond.a442.args = {}
cond.a442.args[1] = ARG_SOUND;
cond.a442.args[2] = ARG_INT;
cond.a442.args[3] = ARG_INT;
cond.a442.args[4] = ARG_FLOAT;

cond.a443 = {}
cond.a443.version = 1.00
cond.a443.class = CLASS_ACTION
cond.a443.name = "Play Dialog Speech with Continue Button";
cond.a443.sentance = "play speech sound with text number , character number and float-number second place holder";
cond.a443.numargs = 4;
cond.a443.args = {}
cond.a443.args[1] = ARG_SOUND;
cond.a443.args[2] = ARG_INT;
cond.a443.args[3] = ARG_INT;
cond.a443.args[4] = ARG_FLOAT;

cond.a444 = {}
cond.a444.version = 1.00
cond.a444.class = CLASS_ACTION
cond.a444.name = "Stop Dialog Speech";
cond.a444.sentance = "stop current speech";
cond.a444.numargs = 0;

cond.a445 = {}
cond.a445.version = 1.00
cond.a445.class = CLASS_ACTION
cond.a445.name = "Set NISlet skip state";
cond.a445.sentance = "set NISlet skipping to state";
cond.a445.numargs = 1;
cond.a445.args = {}
cond.a445.args[1] = ARG_TRUTH;

cond.a446 = {}
cond.a446.version = 1.00
cond.a446.class = CLASS_ACTION
cond.a446.name = "Set character";
cond.a446.sentance = "use entity for character number";
cond.a446.numargs = 2;
cond.a446.args = {}
cond.a446.args[1] = ARG_ENTITY;
cond.a446.args[2] = ARG_INT;

cond.a450 = {}
cond.a450.version = 1.00
cond.a450.class = CLASS_ACTION
cond.a450.name = "DecalVisible";
cond.a450.sentance = "decal visibility is state";
cond.a450.numargs = 2;
cond.a450.args = {}
cond.a450.args[1] = ARG_DECALID;
cond.a450.args[2] = ARG_TRUTH;

cond.a460 = {}
cond.a460.version = 1.00
cond.a460.class = CLASS_ACTION
cond.a460.name = "AddSubgroup2Group (number)";
cond.a460.sentance = "select quantity entities from group and add to group";
cond.a460.numargs = 3;
cond.a460.args = {}
cond.a460.args[1] = ARG_INT;
cond.a460.args[2] = ARG_GROUPID;
cond.a460.args[3] = ARG_GROUPID;

cond.a462 = {}
cond.a462.version = 1.00
cond.a462.class = CLASS_ACTION
cond.a462.name = "AddSubgroup2Group (percent)";
cond.a462.sentance = "select quantity percent of group and add to group";
cond.a462.numargs = 3;
cond.a462.args = {}
cond.a462.args[1] = ARG_INT;
cond.a462.args[2] = ARG_GROUPID;
cond.a462.args[3] = ARG_GROUPID;

cond.a466 = {}
cond.a466.version = 1.00
cond.a466.class = CLASS_ACTION
cond.a466.name = "Group union";
cond.a466.sentance = "set group to group union group";
cond.a466.numargs = 3;
cond.a466.args = {}
cond.a466.args[1] = ARG_GROUPID;
cond.a466.args[2] = ARG_GROUPID;
cond.a466.args[3] = ARG_GROUPID;

cond.a467 = {}
cond.a467.version = 1.00
cond.a467.class = CLASS_ACTION
cond.a467.name = "Group intersection";
cond.a467.sentance = "set group to entities common to group and group";
cond.a467.numargs = 3;
cond.a467.args = {}
cond.a467.args[1] = ARG_GROUPID;
cond.a467.args[2] = ARG_GROUPID;
cond.a467.args[3] = ARG_GROUPID;

cond.a468 = {}
cond.a468.version = 1.00
cond.a468.class = CLASS_ACTION
cond.a468.name = "Group subtraction";
cond.a468.sentance = "set group to group subtract group";
cond.a468.numargs = 3;
cond.a468.args = {}
cond.a468.args[1] = ARG_GROUPID;
cond.a468.args[2] = ARG_GROUPID;
cond.a468.args[3] = ARG_GROUPID;

--=============================================================================
--- Trigger Variable actions
--=============================================================================

cond.a500 = {}
cond.a500.version = 1.00
cond.a500.class = CLASS_ACTION
cond.a500.name = "Set variable (v = quantity)";
cond.a500.sentance = "set variable to quantity";
cond.a500.numargs = 2;
cond.a500.args = {}
cond.a500.args[1] = ARG_TRIGGERVARID;
cond.a500.args[2] = ARG_INT;

cond.a502 = {}
cond.a502.version = 1.00
cond.a502.class = CLASS_ACTION
cond.a502.name = "Set variable (va = vb op quantity)";
cond.a502.sentance = "set variable to variable op quantity";
cond.a502.numargs = 4;
cond.a502.args = {}
cond.a502.args[1] = ARG_TRIGGERVARID;
cond.a502.args[2] = ARG_TRIGGERVARID;
cond.a502.args[3] = ARG_TRIGGERVAROP;
cond.a502.args[4] = ARG_INT;

cond.a504 = {}
cond.a504.version = 1.00
cond.a504.class = CLASS_ACTION
cond.a504.name = "Set variable (va = vb op vc)";
cond.a504.sentance = "set variable to variable op variable";
cond.a504.numargs = 4;
cond.a504.args = {}
cond.a504.args[1] = ARG_TRIGGERVARID;
cond.a504.args[2] = ARG_TRIGGERVARID;
cond.a504.args[3] = ARG_TRIGGERVAROP;
cond.a504.args[4] = ARG_TRIGGERVARID;

cond.a505 = {}
cond.a505.version = 1.00
cond.a505.class = CLASS_ACTION
cond.a505.name = "Set variable (v = group size)"
cond.a505.sentance = "set variable to group size";
cond.a505.numargs = 2;
cond.a505.args = {}
cond.a505.args[1] = ARG_TRIGGERVARID;
cond.a505.args[2] = ARG_GROUPID;

cond.a506 = {}
cond.a506.version = 1.00
cond.a506.class = CLASS_ACTION
cond.a506.name = "Show variable";
cond.a506.sentance = "show variable";
cond.a506.numargs = 1;
cond.a506.args = {}
cond.a506.args[1] = ARG_TRIGGERVARID;

--=============================================================================
--- research triggers
--=============================================================================

--=============================================================================

cond.a526 = {}
cond.a526.version = 1.00
cond.a526.class = CLASS_ACTION
cond.a526.name = "Countdown action";
cond.a526.sentance = "countdown quantity seconds";
cond.a526.numargs = 1;
cond.a526.args = {}
cond.a526.args[1] = ARG_INT;

cond.a527 = {}
cond.a527.version = 1.00
cond.a527.class = CLASS_ACTION
cond.a527.name = "Countdown action (float)";
cond.a527.sentance = "countdown float-number seconds";
cond.a527.numargs = 1;
cond.a527.args = {}
cond.a527.args[1] = ARG_FLOAT;

cond.a530 = {}
cond.a530.version = 1.00
cond.a530.class = CLASS_ACTION
cond.a530.name = "Save game";
cond.a530.sentance = "save game with filename message and text number for name";
cond.a530.numargs = 2;
cond.a530.args = {}
cond.a530.args[1] = ARG_MESSAGE;
cond.a530.args[2] = ARG_INT;

cond.a540 = {}
cond.a540.version = 1.00
cond.a540.class = CLASS_ACTION
cond.a540.name = "Set motion variable";
cond.a540.sentance = "set the motion-variable message for group to float-number";
cond.a540.numargs = 3;
cond.a540.args = {}
cond.a540.args[1] = ARG_MESSAGE;
cond.a540.args[2] = ARG_GROUPID;
cond.a540.args[3] = ARG_FLOAT;

cond.a550 = {}
cond.a550.version = 1.00
cond.a550.class = CLASS_ACTION
cond.a550.name = "FX create (location)";
cond.a550.sentance = "create fx number as message at location";
cond.a550.numargs = 3;
cond.a550.args = {}
cond.a550.args[1] = ARG_INT;
cond.a550.args[2] = ARG_MESSAGE;
cond.a550.args[3] = ARG_ENTITY;

cond.a552 = {}
cond.a552.version = 1.00
cond.a552.class = CLASS_ACTION
cond.a552.name = "FX create (location + scale)";
cond.a552.sentance = "create fx number as message at location with scale float-number";
cond.a552.numargs = 4;
cond.a552.args = {}
cond.a552.args[1] = ARG_INT;
cond.a552.args[2] = ARG_MESSAGE;
cond.a552.args[3] = ARG_ENTITY;
cond.a552.args[4] = ARG_FLOAT;

cond.a554 = {}
cond.a554.version = 1.00
cond.a554.class = CLASS_ACTION
cond.a554.name = "FX create (location + scale + orientation)";
cond.a554.sentance = "create fx number as message at location with scale float-number and target at location";
cond.a554.numargs = 5;
cond.a554.args = {}
cond.a554.args[1] = ARG_INT;
cond.a554.args[2] = ARG_MESSAGE;
cond.a554.args[3] = ARG_ENTITY;
cond.a554.args[4] = ARG_FLOAT;
cond.a554.args[5] = ARG_ENTITY;

cond.a556 = {}
cond.a556.version = 1.00
cond.a556.class = CLASS_ACTION
cond.a556.name = "FX destroy";
cond.a556.sentance = "destroy fx number";
cond.a556.numargs = 1;
cond.a556.args = {}
cond.a556.args[1] = ARG_INT;

cond.a558 = {}
cond.a558.version = 1.00
cond.a558.class = CLASS_ACTION
cond.a558.name = "FX set wind";
cond.a558.sentance = "set wind vector to ( float-number float-number float-number )"
cond.a558.numargs = 3;
cond.a558.args = {}
cond.a558.args[1] = ARG_FLOAT;
cond.a558.args[2] = ARG_FLOAT;
cond.a558.args[3] = ARG_FLOAT;

cond.a560 = {}
cond.a560.version = 1.00
cond.a560.class = CLASS_ACTION
cond.a560.name = "Far-clip distance, set";
cond.a560.sentance = "set far-clip distance to float-number";
cond.a560.numargs = 1;
cond.a560.args = {}
cond.a560.args[1] = ARG_FLOAT;

cond.a562 = {}
cond.a562.version = 1.00
cond.a562.class = CLASS_ACTION
cond.a562.name = "Far-clip distance, reset";
cond.a562.sentance = "reset the far-clip distance";
cond.a562.numargs = 0;

--=============================================================================
-- wait actions
--=============================================================================

cond.a600 = {}
cond.a600.version = 1.00
cond.a600.class = CLASS_ACTION
cond.a600.name = "wait for cameraanim pos";
cond.a600.sentance = "wait until cameraanim is compared quantity meters from the start";
cond.a600.numargs = 3;
cond.a600.args = {}
cond.a600.args[1] = ARG_CAMERAANIMID;
cond.a600.args[2] = ARG_COMPARE;
cond.a600.args[3] = ARG_INT;

cond.a601 = {}
cond.a601.version = 1.00
cond.a601.class = CLASS_ACTION
cond.a601.name = "wait for objanim pos";
cond.a601.sentance = "wait until objanim is compared quantity meters from the start";
cond.a601.numargs = 3;
cond.a601.args = {}
cond.a601.args[1] = ARG_OBJANIMID;
cond.a601.args[2] = ARG_COMPARE;
cond.a601.args[3] = ARG_INT;

cond.a602 = {}
cond.a602.version = 1.00
cond.a602.class = CLASS_ACTION
cond.a602.name = "wait for moveanim pos";
cond.a602.sentance = "wait until moveanim is compared quantity meters from the start";
cond.a602.numargs = 3;
cond.a602.args = {}
cond.a602.args[1] = ARG_MOVEANIMID;
cond.a602.args[2] = ARG_COMPARE;
cond.a602.args[3] = ARG_INT;

--=============================================================================
-- Sigma HUD actions
--=============================================================================

cond.a820 = {}
cond.a820.version = 1.00
cond.a820.class = CLASS_ACTION
cond.a820.name = "UI, NIS description - set";
cond.a820.sentance = "set NIS description to text number"
cond.a820.numargs = 1;
cond.a820.args = {}
cond.a820.args[1] = ARG_INT;

cond.a822 = {}
cond.a822.version = 1.00
cond.a822.class = CLASS_ACTION
cond.a822.name = "UI, NIS description - clear";
cond.a822.sentance = "clear NIS description"
cond.a822.numargs = 0;

cond.a824 = {}
cond.a824.version = 1.00
cond.a824.class = CLASS_ACTION
cond.a824.name = "UI, NIS date - set";
cond.a824.sentance = "set NIS date to text number"
cond.a824.numargs = 1;
cond.a824.args = {}
cond.a824.args[1] = ARG_INT;

cond.a826 = {}
cond.a826.version = 1.00
cond.a826.class = CLASS_ACTION
cond.a826.name = "UI, NIS date - clear";
cond.a826.sentance = "clear NIS date"
cond.a826.numargs = 0;

cond.a827 = {}
cond.a827.version = 1.00
cond.a827.class = CLASS_ACTION
cond.a827.name = "UI, keybinding text - set";
cond.a827.sentance = "set keybinding text to text number";
cond.a827.numargs = 1;
cond.a827.args = {}
cond.a827.args[1] = ARG_INT;

cond.a828 = {}
cond.a828.version = 1.00
cond.a828.class = CLASS_ACTION
cond.a828.name = "UI, keybinding text - clear";
cond.a828.sentance = "clear keybinding text";
cond.a828.numargs = 0;

cond.a830 = {}
cond.a830.version = 1.00
cond.a830.class = CLASS_ACTION
cond.a830.name = "UI, scroll credits";
cond.a830.sentance = "scroll credits"
cond.a830.numargs = 0;

cond.a860 = {}
cond.a860.version = 1.00
cond.a860.class = CLASS_ACTION
cond.a860.name = "UI, NIS the end - set";
cond.a860.sentance = "set NIS the-end to text number"
cond.a860.numargs = 1;
cond.a860.args = {}
cond.a860.args[1] = ARG_INT;

cond.a862 = {}
cond.a862.version = 1.00
cond.a862.class = CLASS_ACTION
cond.a862.name = "UI, NIS the end - clear";
cond.a862.sentance = "clear NIS the-end"
cond.a862.numargs = 0;

--=============================================================================

cond.a900 = {}
cond.a900.version = 1.00
cond.a900.class = CLASS_ACTION
cond.a900.name = "Play Movie";
cond.a900.sentance = "play movie"
cond.a900.numargs = 1;
cond.a900.args = {}
cond.a900.args[1] = ARG_MOVIE;

cond.a910 = {}
cond.a910.version = 1.00
cond.a910.class = CLASS_ACTION
cond.a910.name = "NISlet banner - set banner";
cond.a910.sentance = "set banner to message"
cond.a910.numargs = 1;
cond.a910.args = {}
cond.a910.args[1] = ARG_MESSAGE;

cond.a912 = {}
cond.a912.version = 1.00
cond.a912.class = CLASS_ACTION
cond.a912.name = "NISlet start";
cond.a912.sentance = "start NISlet with banner set to state"
cond.a912.numargs = 1;
cond.a912.args = {}
cond.a912.args[1] = ARG_TRUTH;

cond.a914 = {}
cond.a914.version = 1.00
cond.a914.class = CLASS_ACTION
cond.a914.name = "NISlet end";
cond.a914.sentance = "end NISlet"
cond.a914.numargs = 0;

cond.a916 = {}
cond.a916.version = 1.00
cond.a916.class = CLASS_ACTION
cond.a916.name = "Enable speech continue button";
cond.a916.sentance = "set the speech continue button to state"
cond.a916.numargs = 1;
cond.a916.args = {}
cond.a916.args[1] = ARG_TRUTH;

cond.a960 = {}
cond.a960.version = 1.00
cond.a960.class = CLASS_ACTION
cond.a960.name = "Teamcolour override";
cond.a960.sentance = "make group look like as if it is owned by player";
cond.a960.numargs = 2;
cond.a960.args = {}
cond.a960.args[1] = ARG_GROUPID;
cond.a960.args[2] = ARG_PLAYER;

cond.a962 = {}
cond.a962.version = 1.00
cond.a962.class = CLASS_ACTION
cond.a962.name = "Teamcolour override (cancel)";
cond.a962.sentance = "revert group to its original teamcolour";
cond.a962.numargs = 1;
cond.a962.args = {}
cond.a962.args[1] = ARG_GROUPID;

cond.a980 = {}
cond.a980.version = 1.00
cond.a980.class = CLASS_ACTION
cond.a980.name = "Start combiner tutorial";
cond.a980.sentance = "start combiner tutorial";
cond.a980.numargs = 0;

-- this is for backwards compatibility with the 
-- previous mission editor build.
-- it can be removed on the next build.
enum = {}
