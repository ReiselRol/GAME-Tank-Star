path_end()
Tank_BotEnemie_LastX = Tank_BotEnemie.x
Tank_BotEnemie_LastY = Tank_BotEnemie.y
Tank_BotTimeWaiting = irandom(60 * 5) + 10
var Direction = point_direction(x, y, Tank_BotEnemie.x, Tank_BotEnemie.y)
Tank_PointingTo = Bot_SmoothPointingTo(Tank_PointingTo, Direction)
if (Tank_JumpScareAwaitTime > 0) Tank_JumpScareAwaitTime--
else if (Tank_PointingTo == Direction){
	if ((Tank_WeaponSelected == 1 && Tank_GunMaxAmmo == 0 && Tank_GunAmmo == 0) || (Tank_WeaponSelected == 2 && Tank_GunMaxAmmo2 == 0 && Tank_GunAmmo2 == 0)) Tank_IsReloading = true
	else{
		if (Tank_GunCooldown <= 0) {
			var badAimCalculation = 15 - Tank_BotElo / 100
			if (badAimCalculation > 1) var badAim = irandom(15 - Tank_BotElo / 100)
			else var badAim = 0
			if (irandom(1) == 0) badAim *= -1
			Tank_PointingTo += badAim
		}
		Tank_IsShooting = true
		Tank_IsShootTapping = true
		Tank_IsReloading = false
		if (irandom(600) == 0) Tank_JumpScareAwaitTime = irandom(45) - Tank_BotElo / 100
	}
}