if (Agent_Tank.Tank_EKeyPressed == true) {
	if (Agent_ParasyteActived == true) {
		Agent_ParasyteActived = false
		with (Agent_Tank) AudioPlaySound(ReiselParasyteDectivation)
	} else {
		Agent_ParasyteActived = true
		Agent_ParasyteWaveDetecterCooldown = Agent_ParasyteMaxWaveDetecterCooldown
		Agent_ParasyteShieldHealTime = Agent_ParasyteMaxShieldHealTime
		with (Agent_Tank) AudioPlaySound(ReiselParasyteActivation)
		if (Match.Match_ShopTime == false) Match_MarkTank(Agent_Tank, Agent_ParasyteAutoMarkTime)
	}
}
if (Agent_ParasyteActived == true) {
	Agent_Tank.Tank_TrailColor = c_fuchsia
	Agent_Tank.Tank_MvSpeed += 2.5
	if (Match.Match_ShopTime == false) {
		if (Agent_ParasyteWaveDetecterCooldown > 0) Agent_ParasyteWaveDetecterCooldown --
		else {
			Match_MarkTank(Agent_Tank, Agent_ParasyteAutoMarkTime)
			Agent_ParasyteWaveDetecterCooldown = Agent_ParasyteMaxWaveDetecterCooldown
			var wave = instance_create_layer(Agent_Tank.x, Agent_Tank.y, "ProjsLayer", ParasyteDetecterWave)
			wave.ParasyteDetecterWave_TankID = Agent_Tank
		}
		if (Agent_ParasyteShieldHealTime > 0) Agent_ParasyteShieldHealTime --
		else {
			Agent_ParasyteShieldHealTime = Agent_ParasyteMaxShieldHealTime
			if (Agent_Tank.Tank_Shield + 1 <= Agent_Tank.Tank_MaxShield / 2) Agent_Tank.Tank_Shield ++
		}
	}
} else {
	Agent_Tank.Tank_TrailColor = c_black	
}