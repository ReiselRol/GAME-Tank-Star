if (Agent_Tank.Tank_QKeyPressed == true && Agent_Tank.Tank_QHability > 0 && Match.Match_IsShopTime == false) {
	if (Agent_isQActived == true) Agent_isQActived = false
	else {
		Agent_isQActived = true
		Agent_isStormHabilityActived = false
		Agent_isCActived = false
	}
}
if (Agent_isQActived == true) {
	Agent_isStormHabilityActived = false
	Agent_Tank.Tank_CanShoot = false
	Agent_Tank.Tank_CanScope = false
	Agent_Tank.Tank_DrawPreShoot = false
	Agent_Tank.Tank_GunCooldown = 10
	if (Agent_Tank.Tank_IsShootTapping == true) Agent1_ThrowCloudTo(mouse_x, mouse_y)
} else if (Agent_isCActived == false && Agent_isQActived == false) {
	Agent_Tank.Tank_CanShoot = true
	Agent_Tank.Tank_CanScope = true
	Agent_Tank.Tank_DrawPreShoot = true
}