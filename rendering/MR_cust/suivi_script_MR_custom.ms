-- Suivi Mr cust Render

-- MR matte render: 
	-- permet de faire des rendus en matte shadows de la selection, 
	-- parametrage du material matte

-- MR_render_without_selection : permet de faire un rendu sans la selection

-- MR_alpha_rendu : 
	-- permet de faire un rendu en blanc de la selection
	-- permet de prendre en compte la transaprence ou les couche d'alpha
	
-- MR_alpha_by material : 
	-- permet de faire un rendu de chaque materiau de la scene en blanc, 
	-- ou de chaque materiaux de la selection 
	-- ou du materiaux selectionn� dans l'�diteur de materiaux
	-- ou des materiaux pr�sent dans l'�diteur
	-- fonctionne sur les materiaux dans un mu:lti material
	
-- MR_zdepht: cr�e une passe de zdepth � partir de r�glage sur la camera
-- MR_occlu: cr�e une passe d'occlu, permet de r�gler directement le materiau

-- am�lioration: 
-- int�grer les differents rollout dans une fenetre unique
-- int�grer directement dans l'UI des fonction de la boite de dialogue du rendu (chemin d'enregistrement, taille de l'image, rendu region, netrender, render elements)