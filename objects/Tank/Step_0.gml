/// @description All Frames 60fps
if (Tank_IsABot == false) {
	Tank_MovementFromInputs()
	Tank_UsePhysics()
}
if (Tank_IsDropping == true && Tank_DropCooldown <= 0) Tank_DropGun()
if (Tank_IsDoingAction == true) Tank_TryPickUpp()
if (Tank_IsShooting == true && Tank_GunAutoReuse == true) Tank_Shoot()
else if (Tank_IsShootTapping == true && Tank_GunAutoReuse == false) Tank_Shoot()
else if (Tank_IsReloading == true || (Tank_GunAmmo == 0 && Tank_WeaponSelected == 1) || (Tank_GunAmmo2 == 0 && Tank_WeaponSelected == 2)) Tank_Reload()