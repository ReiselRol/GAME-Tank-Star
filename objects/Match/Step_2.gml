/// @description 
Match_IsShopTime = ( Match_ShopTime > 0)
if (Match_IsShopTime) {
	if (instance_exists(Spike)){
		if (Spike.Spike_isPlanted == false) Match_time --
	}
	else Match_time --
	Match_ShopTime --
}
else if (Match_FirtsPositionSet == false) {
	Match_FirtsPositionSet = true
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
}
if (Match_finished == false && Match_time > 0) {
	var finished = true
	var team = -1
	if (instance_exists(SpikeExplosion) == false) {
		with (Tank) {
			if (team == -1) team = Tank_Team
			else if (team != Tank_Team) finished = false
		}
		if (instance_exists(Spike)) {
			if (Spike.Spike_isPlanted == true) {
				if (Spike.Spike_isDefused == true) {
					team = (global.Defenders == 1) ? 0 : 1
					finished = true
				} else {
					if (team != global.Defenders) finished = false
				}
			}
		}
	} else { 
		team = global.Defenders
		finished = true
	}
} else if (Match_finished == true){
	var finished = Match_finished
	var team = Match_winner
} else {
	var finished = true
	var team = (global.Defenders == 1) ? 0 : 1
}
if (finished == true) { 
	MatchFinishCooldown --
	Match_finished = true
	Match_winner = team
}
if (MatchFinishCooldown <= 0) {
	Match_updateTankInfo()
	if (team > -1) { 
		global.Wins[team] += 1
		global.WinnedTeam = team
	}
	if ( global.Wins[0] == Match_TotalMatchs || global.Wins[1] == Match_TotalMatchs) Match_prepareMatch()
	instance_destroy()
}