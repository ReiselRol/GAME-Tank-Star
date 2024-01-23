/// @description Setting is Bot
randomise()

Tank_MainCamera = false
Tank_DrawPreShoot = false
Camera_CameraHitbox.Camera_Main = Tank_MainCamera
Tank_BotElo = 0
Tank_BotPreviousX = x
Tank_BotPreviousY = y
Tank_JumpScareAwaitTime =  irandom(30) - Tank_BotElo / 100
Tank_IsABot = true
Tank_BotPointingTo = instance_create_layer(x, y, "TankHitboxLayer", HitboxPointingTo)
Tank_BotZone = irandom(2)
Tank_BotCooldownRoFindOtherPath = 0
Tank_BotEnemie = noone
Tank_BotEnemie_LastX = 0
Tank_BotEnemie_LastY = 0
Tank_BotTimeWaiting = irandom(60 * 5) + 10
Tank_BotTimesBeforeChangeZone = irandom(5)