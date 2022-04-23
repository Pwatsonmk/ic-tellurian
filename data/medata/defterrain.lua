-- mission editor terrain defaults

-- default template
deftemplate = "Data:scenarios/mt/sav_s"

-- terrain templates
templates = {}

index = 0

templates[index] = {}
templates[index].desc  = "Arctic, Small (64x64) (256m x 256m)"
templates[index].fname = "Data:scenarios/mt/arc_s"
index = index + 1

templates[index] = {}
templates[index].desc  = "Arctic, Medium (128x128) (512m x 512m)"
templates[index].fname = "Data:scenarios/mt/arc_m"
index = index + 1

templates[index] = {}
templates[index].desc  = "Arctic, Large (256x256) (1024m x 1024m)"
templates[index].fname = "Data:scenarios/mt/arc_l"
index = index + 1

templates[index] = {}
templates[index].desc  = "Desert, Small (64x64) (256m x 256m)"
templates[index].fname = "Data:scenarios/mt/des_s"
index = index + 1

templates[index] = {}
templates[index].desc  = "Desert, Medium (128x128) (512m x 512m)"
templates[index].fname = "Data:scenarios/mt/des_m"
index = index + 1

templates[index] = {}
templates[index].desc  = "Desert, Large (256x256) (1024m x 1024m)"
templates[index].fname = "Data:scenarios/mt/des_l"
index = index + 1

templates[index] = {}
templates[index].desc  = "Savannah, Small (64x64) (256m x 256m)"
templates[index].fname = "Data:scenarios/mt/sav_s"
index = index + 1

templates[index] = {}
templates[index].desc  = "Savannah, Medium (128x128) (512m x 512m)"
templates[index].fname = "Data:scenarios/mt/sav_m"
index = index + 1

templates[index] = {}
templates[index].desc  = "Savannah, Large (256x256) (1024m x 1024m)"
templates[index].fname = "Data:scenarios/mt/sav_l"
index = index + 1

templates[index] = {}
templates[index].desc  = "Swamp, Small (64x64) (256m x 256m)"
templates[index].fname = "Data:scenarios/mt/swamp_s"
index = index + 1

templates[index] = {}
templates[index].desc  = "Swamp, Medium (128x128) (512m x 512m)"
templates[index].fname = "Data:scenarios/mt/swamp_m"
index = index + 1

templates[index] = {}
templates[index].desc  = "Swamp, Large (256x256) (1024m x 1024m)"
templates[index].fname = "Data:scenarios/mt/swamp_l"
index = index + 1

templates[index] = {}
templates[index].desc  = "Tropical, Small (64x64) (256m x 256m)"
templates[index].fname = "Data:scenarios/mt/tropical_s"
index = index + 1

templates[index] = {}
templates[index].desc  = "Tropical, Medium (128x128) (512m x 512m)"
templates[index].fname = "Data:scenarios/mt/tropical_m"
index = index + 1

templates[index] = {}
templates[index].desc  = "Tropical, Large (256x256) (1024m x 1024m)"
templates[index].fname = "Data:scenarios/mt/tropical_l"
index = index + 1


-- obsolete begin
gridwidth = 129
gridheight = 129
texstep = 128
detailtexstep = 8
minchunksize = 8
cellsize = 4.0
heightscale = 0.5
texname = "Data:brushes\\savannagreen.tga"
skyname = "sky01.tga"
detailtile = 2
-- obsolete end