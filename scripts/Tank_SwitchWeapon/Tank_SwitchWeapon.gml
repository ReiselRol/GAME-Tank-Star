var nextWeapon = argument[0]
if (nextWeapon != Tank_WeaponSelected && Tank_GunCooldown <= 0) {
	if ((nextWeapon == 1 && Tank_GunID != -1) || (nextWeapon == 2 && Tank_GunID2 != -1)) {
		Tank_WeaponSelected = nextWeapon
		if (Tank_WeaponSelected == 1) {
			Tank_GunAutoReuse = Tank_GunGetAutoReuse(Tank_GunID)
			AudioPlaySound(Tank_GunGetReloadSound(Tank_GunID))
			Tank_GunAnimationKnockback = 0
		} else {
			Tank_GunAutoReuse = Tank_GunGetAutoReuse(Tank_GunID2)
			AudioPlaySound(Tank_GunGetReloadSound(Tank_GunID2))
			Tank_GunAnimationKnockback = 0
		}
	}
}