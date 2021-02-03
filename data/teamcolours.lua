-- Warning : These colours are fixed, as the art has texture maps that correspond to them.
-- Do not change without consulting the art leads.

-- Warning : The Team Colour plugin for MAX relies on these colours not changing.
-- Do not change without consultin the programming team.

-- Announcement : Ignore the warnings above, MightySarion is here to fix things for you ;)
-- You can change whatever you want, use the RICIP tool, read the texture editing guide, and go for it.

-- Announcement : All SGMs where upgraded to support 10 colors by MightySarion ^_^
-- This was made for the Tellurian mod, and for everyone else to enjoy and copy to mod for themselves.

teamcolours = {}

-- first index is mother nature, the following colours are for the players
teamcolours[0]  = {r=160,g=160,b=160}    --world     : grey       /mod
teamcolours[1]  = {r=102,g=255,b=0}      --player  1 : green      /original
teamcolours[2]  = {r=230,g=0,b=0}        --player  2 : red        /original
teamcolours[3]  = {r=0,g=29,b=245}       --player  3 : blue       /original
teamcolours[4]  = {r=51,g=255,b=235}     --player  4 : cyan       /original
teamcolours[5]  = {r=255,g=163,b=15}     --player  5 : orange     /original
teamcolours[6]  = {r=168,g=0,b=255}      --player  6 : purple     /original
teamcolours[7]  = {r=255,g=102,b=166}    --player  7 : pink       /mod
teamcolours[8]  = {r=255,g=255,b=100}      --player  8 : yellow     /mod
teamcolours[9]  = {r=100,g=100,b=100}       --player  9 : charcoal   /mod

-- the game won't crash up to here, from 11th and above it will...
-- WARNING! if you are an end user, uncommenting it you might cause compatibility issues!
--teamcolours[10] = {r=225,g=225,b=225}    --player 10 : uncomment for a surprise :D