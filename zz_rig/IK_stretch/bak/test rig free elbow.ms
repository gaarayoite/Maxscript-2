
$poignet.pos = $bone003.pos
$coude.pos = $bone002.pos
$condition2.pos.y = -50


aa = distance $epaule $coude
bb = distance $poignet $coude
$condition2.pos.y = 50

--comment recup�rer le nom (intitul�) d'un controller?
-- comment affecter la valeur d'un controleur � un autre sous forme de point cl�?
  -- 1 activer le controller source (script)
     $.position.controller.x_position.controller.setActive 1
  -- 2 stocker la valeur du controller source sous forme de constante
     pos_source = $.pos.x
  -- 2.5 r�cup�rer le numero de la frame o� l'on veut cr�er la cl�.
  
 -- 2.6 stocker le numero  sous forme de constante
    frame_frame =
  -- 3.1 activer le controller cible
    $.position.controller.x_position.controller.setActive 2
  -- 3.2 mettre le poids du controller 1 � zero
  $.pos.controller.X_Position.controller.weight[0] = 0
  -- 3.3 mettre le poids du controller 2 � 100
  $.pos.controller.X_Position.controller.weight[2] = 1
  -- 4 cr�er un point cl� sur le controller cible � la frame stock�e en y appliquant la valeur stock�e
     animate on (at frame_frame  $.pos.x = pos_source)
  
-- comment cr�er une cl� avec une valeur pr�cise?
animate on ( at time 20 $.pos.x = 20)
-- comment r�cup�rer un num�ro  de frame � un moment donn�?
-- comment activer un controller?
$.position.controller.x_position.controller.setActive 1

--cr�er une boite de dialogue
rollout tets "Untitled" width:162 height:300 ()
createdialog tets

--cr�er un modifier vide
test = emptymodifier ()
addmodifier $ test

--choisir un node, pickbutton?

--conserver un lien � un node m�me si le nom de l'object change?



