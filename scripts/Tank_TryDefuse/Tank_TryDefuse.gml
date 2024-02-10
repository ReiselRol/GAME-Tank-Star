if (instance_exists(Spike)) {
	if (Tank_Attacker == false && point_distance(x, y, Spike.x, Spike.y) <= 50) {
		Tank_IsPointingUpp = false
		Tank_IsPointingDown = false
		Tank_IsPointingLeft = false
		Tank_IsPointingRight = false
		Tank_IsShooting = false
		Tank_IsReloading = false
		Tank_IsShootTapping = false
		Tank_IsDoingAction = false
	}
}