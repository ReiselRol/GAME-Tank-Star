if (Match_SpikeMatch == true) {
	var defenderTeam = global.Defenders
	var zoneToDefend = irandom(2)
	with (BotTank) {
		if (Tank_Team = defenderTeam) {
			Tank_BotZone = 	zoneToDefend
			Bot_GoToZone()
		} else Bot_SelectPosition()
	}
} else {
	with (BotTank) Bot_SelectPosition()	
}