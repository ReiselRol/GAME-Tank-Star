if (Tank_HasTheSpike == true) {
	var dir = (Tank_Health > 0) ? Tank_PointingTo : irandom(360)
	var speedD = 6
	var spike = instance_create_layer(x, y, "LetalHitboxLayer", Spike)
	spike.speed = 14 * 2
	spike.direction = dir
	Tank_HasTheSpike = false
}