if (instance_exists(Tank_BotPointingTo)) {
	Tank_IsDoingAction = false
	Bot_MovePointingTo()
	Tank_BotEnemie = Bot_LocalizeTank()
	Bot_IAAnimation()
	if (Tank_BotCooldownRoFindOtherPath > 0) Tank_BotCooldownRoFindOtherPath--
	if (irandom(850) == 0) {
		if (irandom(1) == 0) Bot_SwitchWeapon()
		else Tank_IsDoingAction = true
	}
	else {
		if (Tank_BotEnemie != noone) Bot_AgressiveMode()
		else Bot_NonAggresiveMode()
	}
}