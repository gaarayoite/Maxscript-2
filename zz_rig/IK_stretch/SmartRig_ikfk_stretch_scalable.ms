-- $.position.controller.x_position.controller.stretch.controller.addnode "scale" $Circle001

rollout ikScalableMakerRLKT "IK scalable Maker"
(
	local scaler
	
	local point_bnAr = #()
-- 	UI
	listbox ptbnLB "point_bn :"
	pickbutton scalerPB "pick"
	button selBT "sel"
	button injectBT "inject"

	-- IK point finder
	on ikScalableMakerRLKT open do
	(
		for o in ($* as array) do
		(
			if (classof o == point) then 
			(
				if ((findString o.name "point_bn") != undefined) OR ((findString o.name "hlp_ik_bones") != undefined ) AND ((findString o.name "ctr") == undefined) then append point_bnAr o
			)
		)
		
		ptbnLB.items = for o in point_bnAr collect o.name
	)
	
	on selBT pressed do
	(
		select point_bnAr[ptbnLB.selection]
	)
	
	on scalerPB picked obj do
	(
		scaler = obj
		scalerPB.text = obj.name
	)
	
	on injectBT pressed do
	(
		try
		(
			$.position.controller.x_position.controller.stretch.controller.addnode "scale" scaler
-- 			print scaler.scale.x
		)catch(print "pas de track")
	)
	
)

-- $.scale.x
createdialog ikScalableMakerRLKT