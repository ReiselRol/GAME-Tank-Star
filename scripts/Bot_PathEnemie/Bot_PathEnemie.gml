var nextZone = irandom(2)
while (nextZone == Tank_BotZone) nextZone = irandom(2)
var objectiveX = Tank_BotEnemie_LastX
var objectiveY = Tank_BotEnemie_LastY
Tank_BotPath = path_add()
if (mp_grid_path(global.MapGrid, Tank_BotPath, x, y, objectiveX, objectiveY, (irandom(1) == 0))) path_start(Tank_BotPath, Tank_MvSpeed, path_action_stop, false)	