Tank_IsShooting = false
Tank_IsShootTapping = false
Tank_JumpScareAwaitTime = irandom(30) - Tank_BotElo / 100
if (Tank_BotEnemie_LastX > 0) {
	Bot_PathEnemie()
	Tank_IsScooping = true
}
else {
	Bot_ChangeUbication()
	Tank_IsReloading = true
	Tank_BotEnemie = noone
}
Tank_BotFindNewPath = false
