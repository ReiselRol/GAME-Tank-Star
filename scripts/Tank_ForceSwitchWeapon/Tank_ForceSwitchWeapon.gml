if (Tank_WeaponSelected == 1) {
	Tank_GunDamage = Tank_GunGetDamage(Tank_GunID)
	Tank_GunAutoReuse = Tank_GunGetAutoReuse(Tank_GunID)
	Tank_GunMaxCooldown = Tank_GunGetCooldown(Tank_GunID)
	Tank_GunCooldown = 50
	Tank_GunProj = Tank_GunGetProj(Tank_GunID)
	Tank_GunShootSound = Tank_GunGetSHootSound(Tank_GunID)
	AudioPlaySound(Tank_GunGetReloadSound(Tank_GunID))
	Tank_FixWeaponSelection()
} else {
	Tank_GunDamage = Tank_GunGetDamage(Tank_GunID2)
	Tank_GunAutoReuse = Tank_GunGetAutoReuse(Tank_GunID2)
	Tank_GunMaxCooldown = Tank_GunGetCooldown(Tank_GunID2)
	Tank_GunCooldown = 50
	Tank_GunProj = Tank_GunGetProj(Tank_GunID2)
	Tank_GunShootSound = Tank_GunGetSHootSound(Tank_GunID2)
	AudioPlaySound(Tank_GunGetReloadSound(Tank_GunID2))
	Tank_FixWeaponSelection()
}
