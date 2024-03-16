var ubicationChanged = false
var spikePlanted = false
with (Spike) spikePlanted = Spike_isPlanted = true
var spikeExists = instance_exists(Spike)
if (spikePlanted == true) {
	with (BotTank) {
		if (Tank_BotTimeWaiting <= 0 && Tank_BotRandomWaitForMove <= 0) {
			if (Tank_Attacker == true) {
				Tank_BotTimeWaiting = irandom(300 - Tank_BotElo / 10)
				if (Spike.Spike_isDefusing == false){ 
					Tank_BotZone = Bot_GetSpikeSite()
					Bot_GoToZone()
				} else Bot_GoToSpike()
			} else {
				Tank_BotTimeWaiting = irandom(300 - Tank_BotElo / 10)
				if (Spike.Spike_isDefusing == true){ 
					Tank_BotZone = Bot_GetSpikeSite()
					Bot_GoToZone()
				} else Bot_GoToSpike()
			}
		}
	}
} else {
	if (spikeExists == true && spikePlanted == false && Tank_BotTimeWaiting <= 0 && Tank_BotRandomWaitForMove <= 0 && Tank_Attacker == true) Bot_GoToSpike()
	else if (Tank_BotTimeWaiting <= 0){
		ubicationChanged = true
		if (Tank_BotCooldownRoFindOtherPath > 0 && Tank_BotRandomWaitForMove <= 0) {
			Tank_BotTimeWaiting = irandom(300 - Tank_BotElo / 10)
			Tank_BotCooldownRoFindOtherPath --
			Bot_GoToZone()
		} else {
			Tank_BotTimeWaiting = irandom(300 - Tank_BotElo / 10)
			Tank_BotTimesBeforeChangeZone = irandom(5)
			Bot_SelectPosition()
		}
	}
}
return ubicationChanged