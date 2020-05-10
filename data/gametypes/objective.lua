--------------------------------------------------------------
-- set MP objective
--------------------------------------------------------------

function objective_set( textID )

	-- constant
	local objnum = 255

	-- use gametype trigger folder
	trigger_folder("__gametype")
	
	tname = "MP_objective"
	if trigger_exists( tname ) == 0 then
		t = trigger_new( tname )
			-- conditions
			c = texpression_new("Always")
			-- actions
			a1 = texpression_new("Objective, create primary obj")
			texpression_setarg(a1,1,objnum)
			texpression_setarg(a1,2,textID)
			texpression_setarg(a1,3,textID)

				-- turn on objective
			a2 = texpression_new("Objective, set objective state")
			texpression_setarg(a2,1,objnum)
			texpression_setarg(a2,2,1)
		trigger_addexpression(t, c)
		trigger_addexpression(t, a1)
		trigger_addexpression(t, a2)
	end
	
end