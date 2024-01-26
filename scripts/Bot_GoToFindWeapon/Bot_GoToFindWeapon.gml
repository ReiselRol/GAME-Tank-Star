var closestGun = instance_nearest(x, y, GroundGun)
if (closestGun != noone) {
	Tank_BotPath = path_add()
	if (mp_grid_path(global.MapGrid, Tank_BotPath, x, y, closestGun.x, closestGun.y, true)) path_start(Tank_BotPath, Tank_MvSpeed, path_action_stop, false)
}