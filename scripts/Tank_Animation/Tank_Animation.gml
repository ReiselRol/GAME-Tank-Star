
if (Tank_IsPointingUpp == true && Tank_IsPointingDown == false) {
	if (Tank_IsPointingLeft == true && Tank_IsPointingRight == false) Tank_FixAngloTo(135)	
	else if (Tank_IsPointingLeft == false && Tank_IsPointingRight == true) Tank_FixAngloTo(45)
	else Tank_FixAngloTo(90)
} else if (Tank_IsPointingUpp == false && Tank_IsPointingDown == true) {
	if (Tank_IsPointingLeft == true && Tank_IsPointingRight == false) Tank_FixAngloTo(225)
	else if (Tank_IsPointingLeft == false && Tank_IsPointingRight == true) Tank_FixAngloTo(315)
	else Tank_FixAngloTo(270)
} else {
	if (Tank_IsPointingLeft == true && Tank_IsPointingRight == false) Tank_FixAngloTo(180)	
	else if (Tank_IsPointingLeft == false && Tank_IsPointingRight == true) {
		if (Tank_Angle <= 270) Tank_FixAngloTo(0)
		else Tank_FixAngloTo(360)
	}
}
if (global.LDM == false) {
	var setTrail = true
	if (place_meeting(x, y, TankTrail)) setTrail = (instance_nearest(x, y, TankTrail).Trail_TankFrom != id)
	if (setTrail == true) {
		var trail = instance_create_layer(x, y, "TankTrailLayer", TankTrail)
		trail.Trail_TankFrom = id
		trail.image_xscale = Tank_Scale
		trail.image_yscale = Tank_Scale
		trail.image_angle = Tank_Angle
		trail.image_blend = Tank_TrailColor
	}
}