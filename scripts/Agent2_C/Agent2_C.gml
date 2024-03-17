if (Agent_Tank.Tank_CKeyPressed == true && Agent_Tank.Tank_CHability > 0 && Agent_isTping == false && Match.Match_ShopTime == false) {
	if (Agent_GonnaThrowGhostCross == true) Agent_GonnaThrowGhostCross = false
	else {
		Agent_TpSelected = false	
		Agent_GonnaThrowGhostCross = true
		Agent_EyeSelected = false
	}
}
if (Agent_GonnaThrowGhostCross == true) {
	Agent_Tank.Tank_DrawPreShoot = false
	Agent_Tank.Tank_IsScooping = false
	if (Agent_Tank.Tank_IsShootTapping == true) {
		AudioPlaySound(SpectreCrossThrowing)
		Agent_GonnaThrowGhostCross = false
		Agent_Tank.Tank_GunCooldown = 10
		Agent_Tank.Tank_IsShootTapping = false
		var cross = instance_create_layer(Agent_Tank.x, Agent_Tank.y, "ProjsLayer", SpectreGhostCross)
		cross.direction = Agent_Tank.Tank_PointingTo
		cross.SpectreGhostCross_TankID = Agent_Tank
		cross.SpectreGhostCross_Team = Agent_Tank.Tank_Team
		if (Match.Match_UlimitedHabilities == false) Agent_Tank.Tank_CHability --
	}
} else if (Agent_TpSelected == false) Agent_Tank.Tank_DrawPreShoot = true