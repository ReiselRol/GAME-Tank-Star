if (Agent_Tank.Tank_EKeyPressed == true && Agent_EyeCooldown <= 0 && Agent_isTping == false && Match.Match_ShopTime == false) {
	if (Agent_EyeSelected == true) Agent_EyeSelected = false
	else {
		Agent_TpSelected = false	
		Agent_GonnaThrowGhostCross = false
		Agent_EyeSelected = true
	}
}
if (Agent_EyeSelected == true) {
	Agent_Tank.Tank_IsScooping = false
	Agent_Tank.Tank_DrawPreShoot = false
	if (Agent_Tank.Tank_IsShootTapping == true) {
		Agent_EyeSelected = false
		Agent_Tank.Tank_GunCooldown = 10
		Agent_Tank.Tank_IsShootTapping = false
		Agent_EyeCooldown = Agent_MaxEyeCooldown
		var pointingX = (Agent_Tank.Tank_IsABot == true) ? Agent_Tank.Tank_BotNextX : mouse_x
		var pointingY = (Agent_Tank.Tank_IsABot == true) ? Agent_Tank.Tank_BotNextY : mouse_y
		var eye = instance_create_layer(pointingX, pointingY, "ProjsLayer", SpectreEye)
		eye.SpectreEye_TankId = Agent_Tank
		eye.SpectreEye_Team = Agent_Tank.Tank_Team
	}
}