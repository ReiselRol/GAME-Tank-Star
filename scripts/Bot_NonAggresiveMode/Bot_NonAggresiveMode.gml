Tank_IsShooting = false
Tank_IsShootTapping = false
Tank_JumpScareAwaitTime = irandom(30) - Tank_BotElo / 100
if (Tank_BotEnemie_LastX > 0) {
	Tank_IsScooping = true
	Bot_PathEnemie()
	
}
else {
	Tank_IsBombKeyPressed = false
	if (Tank_Attacker == true && Tank_HasTheSpike == true && place_meeting(x, y, HitboxZoneSpike) ) Tank_IsBombKeyPressed = true
	else if (instance_exists(Spike)) {
		if (Tank_Attacker == false) {
			if (Spike.Spike_isPlanted == true && point_distance(x, y, Spike.x, Spike.y) <= 50) Tank_IsBombKeyPressed = true
			else {
				Tank_IsBombKeyPressed = false
				Bot_ChangeUbication()
			}
		} else {
			Bot_ChangeUbication()
			Tank_IsReloading = true
			Tank_BotEnemie = noone
		}
	}
	else {
		Bot_ChangeUbication()
		Tank_IsReloading = true
		Tank_BotEnemie = noone
	}
}
if (point_distance(x, y, Tank_BotNextX, Tank_BotNextY) <= 500 + Tank_BotElo) Tank_IsScooping = true
Tank_BotFindNewPath = false
