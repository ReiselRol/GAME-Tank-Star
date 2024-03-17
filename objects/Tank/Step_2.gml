/// @description All the core
Tank_Scooping()
if (Tank_SlowDebuffTime > 0) Tank_MvSpeed *= 0.4
Tank_CanPlant = place_meeting(x, y, HitboxZoneSpike)
if (Tank_IsBombKeyPressed == true) {
	if (Tank_Attacker == true) Tank_TryPlant()
	else Tank_TryDefuse()
}
else {
	if (Tank_HasTheSpike == true)
	Tank_PlantingTime = 0
	Tank_CanScope = true
	Tank_BarDelete("Planting Spike")
	Tank_BarDelete("Defusing Spike")
}
if (Tank_IsABot == false) {
	Tank_MovementFromInputs()
	Tank_UsePhysics()
}
if (Tank_IsDropping == true && Tank_DropCooldown <= 0) Tank_DropGun()
if (Tank_IsDoingAction == true) Tank_TryPickUpp()
if (Tank_CanShoot == true) {
	if (Tank_IsShooting == true && Tank_GunAutoReuse == true) Tank_Shoot()
	else if (Tank_IsShootTapping == true && Tank_GunAutoReuse == false) Tank_Shoot()
	else if (Tank_IsReloading == true || (Tank_GunAmmo == 0 && Tank_WeaponSelected == 1) || (Tank_GunAmmo2 == 0 && Tank_WeaponSelected == 2)) Tank_Reload()
}

Tank_Animation()
Tank_SoundControl()
Tank_CameraControl()
Tank_LayerControl()
Tank_Timers()