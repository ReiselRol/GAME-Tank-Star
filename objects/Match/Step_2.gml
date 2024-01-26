/// @description 
Match_IsShopTime = ( Match_ShopTime > 0)
if (Match_IsShopTime) Match_ShopTime --
else if (Match_FirtsPositionSet == false) {
	Match_FirtsPositionSet = true
	if (Match_SpikeMatch == true) {
		var defenderTeam = Match_DefendingTeam
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
var finished = true
var team = -1
with (Tank) {
	if (team == -1) team = Tank_Team
	else if (team != Tank_Team) finished = false
}
if (finished == true) MatchFinishCooldown --
if (MatchFinishCooldown <= 0) {
	Match_updateTankInfo()
	if (team > -1)global.Wins[team] += 1
	if ( global.Wins[0] == Match_TotalMatchs || global.Wins[1] == Match_TotalMatchs) Match_prepareMatch()
	room_restart()
}