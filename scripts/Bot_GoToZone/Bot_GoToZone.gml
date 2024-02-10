var objectiveX = 0
var objectiveY = 0
if (Tank_BotZone == 5 && instance_exists(Spike) == false) Tank_BotZone = irandom(4)
while (Tank_HasTheSpike == true && Tank_BotZone > 2) Tank_BotZone = irandom(2)
if (Tank_BotZone == 0) var objective = Bot_RandomZonaSelection([HitboxZoneA, HitboxZoneA1, HitboxZoneA2, HitboxZoneA3, HitboxZoneA4, HitboxZoneA5])
else if (Tank_BotZone == 1) var objective = Bot_RandomZonaSelection([HitboxZoneB, HitboxZoneB1, HitboxZoneB2, HitboxZoneB3, HitboxZoneB4])
else if (Tank_BotZone == 2) var objective = Bot_RandomZonaSelection([HitboxZoneC, HitboxZoneC1, HitboxZoneC2, HitboxZoneC3])
else if (Tank_BotZone == 3) var objective = Bot_RandomZonaSelection([HitboxZone1])
else if (Tank_BotZone == 4) var objective = Bot_RandomZonaSelection([HitboxZone2])
objectiveX = objective[0]
objectiveY = objective[1]
Tank_BotNextX = objectiveX
Tank_BotNextY = objectiveY
Tank_BotFirstTimeOnZone = false
Tank_BotPath = path_add()
if (mp_grid_path(global.MapGrid, Tank_BotPath, x, y, objectiveX, objectiveY, true)) path_start(Tank_BotPath, Tank_MvSpeed, path_action_stop, false)	