if (Agent_Tank.Tank_KKeyPressed == true && Agent_Tank.Tank_KHability == Agent_Tank.Tank_MaxKHability && Agent_isTping == false && Match.Match_ShopTime == false && instance_number(TankDeath) > 0) {
	Agent_TpSelected = false	
	Agent_GonnaThrowGhostCross = false
	Agent_EyeSelected = false
	if (Match.Match_UlimitedHabilities == false) Agent_Tank.Tank_KHability = 0
	var ag = Agent_Tank
	AudioPlayNormalSound(SpectreUlti)
	with (TankDeath) {
		var eye = instance_create_layer(x, y, "ProjsLayer", SpectreEye)
		eye.SpectreEye_TankId = ag
		eye.SpectreEye_Team = ag.Tank_Team
		eye.SpectreEye_MaxTime = G_SetTime(300)
		eye.SpectreEye_Time = G_SetTime(300)
		var randomSearcherCount = irandom(2) + 1
		var randomAngle = irandom(360)
		for (var i = 0; i < randomSearcherCount; i++) {
			var cross = instance_create_layer(x, y, "ProjsLayer", SpectreGhostCross)
			cross.direction = randomAngle + 120 * i
			cross.SpectreGhostCross_TankID = ag
			cross.SpectreGhostCross_Team = ag.Tank_Team
		}
	}
}