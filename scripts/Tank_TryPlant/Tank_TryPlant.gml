if (Tank_CanPlant == true && Tank_HasTheSpike == true) {
	if (Tank_PlantingTime < Tank_PlantingTimeNeeded)  {
		Tank_PlantingTime ++
		Tank_IsPointingUpp = false
		Tank_IsPointingDown = false
		Tank_IsPointingLeft = false
		Tank_IsPointingRight = false
		Tank_IsShooting = false
		Tank_IsReloading = false
		Tank_IsShootTapping = false
		Tank_IsDoingAction = false
		Tank_GunCooldown = 20
		Tank_CanScope = false
		path_speed = 0
		Tank_BarManage("Planting Spike", Tank_PlantingTime, Tank_PlantingTimeNeeded, 1)
	}
	else {
		var spike = instance_create_layer(x, y, "TankHitboxLayer", Spike) 
		Tank_CanScope = true
		spike.Spike_isPlanted = true
		Tank_HasTheSpike = false
		if (Tank_IsABot == true) Bot_GoToZone()
		Tank_BarDelete("Planting Spike")
	}
}