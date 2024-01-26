if (Tank_WeaponSelected == 1 && Tank_GunID > -1) Tank_SwitchWeapon(1)
else if (Tank_WeaponSelected == 2 && Tank_GunID2 > -1) Tank_SwitchWeapon(2)
else {
	Bot_GoToFindWeapon()
	Tank_TryPickUpp()
}