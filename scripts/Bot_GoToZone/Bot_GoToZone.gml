var objectiveX = 0
var objectiveY = 0
if (Tank_BotZone == 0) {
	objectiveX = HitboxZoneA.x
	objectiveY = HitboxZoneA.y
	var randomX = irandom(HitboxZoneA.image_xscale * 10) / 2
	var randomY = irandom(HitboxZoneA.image_yscale * 10) / 2
	if (irandom(1) == 0) objectiveX += randomX
	else objectiveX -= randomX
	if (irandom(1) == 0) objectiveY += randomY
	else objectiveY -= randomY
} else if (Tank_BotZone == 1) {
	objectiveX = HitboxZoneB.x
	objectiveY = HitboxZoneB.y
	var randomX = irandom(HitboxZoneB.image_xscale * 10) / 2
	var randomY = irandom(HitboxZoneB.image_yscale * 10) / 2
	if (irandom(1) == 0) objectiveX += randomX
	else objectiveX -= randomX
	if (irandom(1) == 0) objectiveY += randomY
	else objectiveY -= randomY
} else if (Tank_BotZone == 2) {
	objectiveX = HitboxZoneC.x
	objectiveY = HitboxZoneC.y
	var randomX = irandom(HitboxZoneC.image_xscale * 10) / 2
	var randomY = irandom(HitboxZoneC.image_yscale * 10) / 2
	if (irandom(1) == 0) objectiveX += randomX
	else objectiveX -= randomX
	if (irandom(1) == 0) objectiveY += randomY
	else objectiveY -= randomY
}
Tank_BotPath = path_add()
if (mp_grid_path(global.MapGrid, Tank_BotPath, x, y, objectiveX, objectiveY, true)) path_start(Tank_BotPath, Tank_MvSpeed, path_action_stop, false)	