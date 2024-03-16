if (instance_exists(Spike)) {
	if (Spike.Spike_isDefused == false && Spike.Spike_isPlanted == true && Tank_Attacker == false && point_distance(x, y, Spike.x, Spike.y) <= 50) {
		Tank_IsPointingUpp = false
		Tank_IsPointingDown = false
		Tank_IsPointingLeft = false
		Tank_IsPointingRight = false
		Tank_IsShooting = false
		Tank_IsReloading = false
		Tank_IsShootTapping = false
		Tank_IsDoingAction = false
		Tank_CanScope = false
		if (Tank_StartedDefusing == false)	{
			Tank_StartedDefusing = true
			AudioPlaySound(SpikeDefusing)
		}
		Tank_BarManage("Defusing Spike", Spike.Spike_DefusedTime, Spike.Spike_AllTimeNeedToDefuse, 1)
	} else {
		Tank_BarDelete("Defusing Spike")
		Tank_StartedDefusing = false
	}
}