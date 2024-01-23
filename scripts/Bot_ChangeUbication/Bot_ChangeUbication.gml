var ubicationChanged = false
if (Tank_BotTimeWaiting <= 0){
	ubicationChanged = true
	if (Tank_BotCooldownRoFindOtherPath > 0) {
		Tank_BotTimeWaiting = irandom(60 * 5)
		Tank_BotCooldownRoFindOtherPath --
		Bot_GoToZone()
	} else {
		Tank_BotTimeWaiting = irandom(60 * 5)
		Tank_BotTimesBeforeChangeZone = irandom(5)
		Bot_SelectPosition()
	}
}
return ubicationChanged