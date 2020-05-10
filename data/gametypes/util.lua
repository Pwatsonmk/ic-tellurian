--------------------------------------------------------------
-- tool functions
--------------------------------------------------------------

-- initialize the random seed
function initRand()
	randomseed( date("%M") * 10000 + date("%S") * 100 )
end

-- randomly return one of the entries from a table
function randElem( tab )
	local n = getn( tab )

	-- integral index
	local i = floor( (n * random()) + 1 )  

	-- extract element
	return tab[i]	
end

-- append an element to a table
function append( tab, elem )
	local index = getn( tab ) + 1
	tab[index] = elem
end

-- deep-clone a table
function clone(t)            -- return a copy of the table t
  local new = {}             -- create a new table
  local i, v = next(t, nil)  -- i is an index of t, v = t[i]
  while i do
    if type(v) == "table" then
       v = clone(v)
    end
    new[i] = v
    i, v = next(t, i)        -- get next index
  end
  return new
end
