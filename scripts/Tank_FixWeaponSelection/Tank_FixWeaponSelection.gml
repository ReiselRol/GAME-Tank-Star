if (Tank_WeaponSelected == 1 && Tank_GunID < 0) {
	if (Tank_GunID2 > -1) Tank_SwitchWeapon(2)
} else if (Tank_WeaponSelected == 2 && Tank_GunID2 < 0) {
	if (Tank_GunID > -1) Tank_SwitchWeapon(1)
}