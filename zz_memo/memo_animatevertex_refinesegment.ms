-- spline creation
s = line () 

addnewspline s
addknot s 1 #smooth #curve [0, 0, 50]
addknot s 1 #smooth #curve [50, 0, 0]
addknot s 1 #smooth #curve [100, 0, 50]

updateshape s

-- controller vertex creation
animatevertex s #all
updateshape s

