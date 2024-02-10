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
	}
	else {
		var spike = instance_create_layer(x, y, "TankHitboxLayer", Spike) 
		spike.Spike_isPlanted = true
		Tank_HasTheSpike = false
		if (Tank_IsABot == true) Bot_GoToZone()
	}
}