
-- all the different terrain types

TT_UNKNOWN=0
TT_Grass=1
TT_Snow=2
TT_DirtSand=3
TT_Rock=4

-- terrain type definitions

numtypes=5
types = {}

types.t0 = {}
types.t0.name    = "Unknown"
types.t0.type    = TT_UNKNOWN
types.t0.colourR = 192
types.t0.colourG = 0
types.t0.colourB = 0

types.t1 = {}
types.t1.name    = "Grass"
types.t1.type    = TT_Grass
types.t1.colourR = 15
types.t1.colourG = 123
types.t1.colourB = 53

types.t2 = {}
types.t2.name    = "Snow"
types.t2.type    = TT_Snow
types.t2.colourR = 255
types.t2.colourG = 255
types.t2.colourB = 255

types.t3 = {}
types.t3.name    = "DirtSand"
types.t3.type    = TT_DirtSand
types.t3.colourR = 194
types.t3.colourG = 194
types.t3.colourB = 133

types.t4 = {}
types.t4.name    = "Rock"
types.t4.type    = TT_Rock
types.t4.colourR = 160
types.t4.colourG = 160
types.t4.colourB = 160
