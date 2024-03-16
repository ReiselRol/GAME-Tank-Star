var angle = 0
var canDraw = false
var bulletDispersio = 3
if (Tank_WeaponSelected == 1 && Tank_GunID > -1) {
	bulletDispersio = Tank_GunGetDispersion(Tank_GunID)
	angle = Tank_GunGetAngle(Tank_GunID) / 1.1
	canDraw = true
	if (Tank_IsPointingDown || Tank_IsPointingUpp || Tank_IsPointingLeft || Tank_IsPointingRight) angle *= bulletDispersio
} else if (Tank_WeaponSelected == 2 && Tank_GunID2 > -1) {
	bulletDispersio = Tank_GunGetDispersion(Tank_GunID2)
	angle = Tank_GunGetAngle(Tank_GunID2) / 1.1
	canDraw = true
	if (Tank_IsPointingDown || Tank_IsPointingUpp || Tank_IsPointingLeft || Tank_IsPointingRight) angle *= bulletDispersio
}
if (canDraw == true) {
	var Xinitial = 0
	var Yinitial = 0
	if (Tank_WeaponSelected == 1) {
		var lenght = Tank_GunGetLenght(Tank_GunID) * Tank_Scale
		Xinitial = x + lengthdir_x(lenght, Tank_PointingTo)
		Yinitial = y + lengthdir_y(lenght, Tank_PointingTo)
	} else {
		var lenght = Tank_GunGetLenght(Tank_GunID2) * Tank_Scale
		Xinitial = x + lengthdir_x(lenght, Tank_PointingTo)
		Yinitial = y + lengthdir_y(lenght, Tank_PointingTo)
	}
	var XRight = 0
	var YRight = 0
	var XLeft = 0
	var YLeft = 0
	var distance = 3000
	var angleDerecha = Tank_PointingTo - angle
	var angleIzquierda = Tank_PointingTo + angle
	XRight = Xinitial + lengthdir_x(distance, angleDerecha)
	YRight = Yinitial + lengthdir_y(distance, angleDerecha)
	XLeft = Xinitial + lengthdir_x(distance, angleIzquierda)
	YLeft = Yinitial + lengthdir_y(distance, angleIzquierda)
	draw_set_alpha(0.25)
	draw_triangle_color(x, y, XRight, YRight, XLeft, YLeft, c_white, c_white, c_white, false)
	draw_set_alpha(1)
}