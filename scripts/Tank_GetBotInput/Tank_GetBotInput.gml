if (instance_exists(Tank_BotPointingTo)) {
	Tank_IsDoingAction = false
	Bot_MovePointingTo()
	Tank_BotEnemie = Bot_LocalizeTank()
	Bot_IAAnimation()
	if (Tank_BotCooldownRoFindOtherPath > 0) Tank_BotCooldownRoFindOtherPath--
	if (irandom(500) == 0) Bot_SwitchWeapon()
	else {
		if (Tank_WeaponSelected == 1 && Tank_GunAmmo == 0 && Tank_GunID > -1) Bot_AmmoSystem()
		else if (Tank_WeaponSelected == 2 && Tank_GunAmmo2 == 0 && Tank_GunID2 > -1) Bot_AmmoSystem()
		else if (Tank_BotEnemie != noone) {
			Bot_AgressiveMode()
			Tank_IsScooping = true
		}
		else Bot_NonAggresiveMode()
		if ( (Tank_GunID < 0 || Tank_GunID2 < 0) && irandom(300) == 0) Tank_IsDoingAction = true
	}
}