Tank_BotNextX = Spike.x
Tank_BotNextY = Spike.y
Tank_BotFirstTimeOnZone = false
Tank_BotPath = path_add()
if (mp_grid_path(global.MapGrid, Tank_BotPath, x, y, Tank_BotNextX, Tank_BotNextY, true)) path_start(Tank_BotPath, Tank_MvSpeed, path_action_stop, false)	