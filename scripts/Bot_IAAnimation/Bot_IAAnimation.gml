var angleChanged = true
var nextAngle = Tank_PointingTo
if (x == Tank_BotPreviousX && y == Tank_BotPreviousY) {
	if(Tank_BotRandomWaitForMove > 0) Tank_BotRandomWaitForMove --
	if (Tank_BotTimeWaiting > 0 && Tank_BotEnemie == noone && Tank_BotRandomWaitForMove <= 0) {
		Tank_BotTimeWaiting--
		Tank_BotEnemie_LastX = 0
		Tank_BotEnemie_LastY = 0
	} Tank_IsScooping = true
} else Tank_IsScooping = false	
if (y > Tank_BotPreviousY) {
	Tank_IsPointingDown = true
	Tank_IsPointingUpp = false
	nextAngle = 270
} else if (y < Tank_BotPreviousY) {
	Tank_IsPointingDown = false
	Tank_IsPointingUpp = true
	nextAngle = 90
} else {
	Tank_IsPointingDown = false
	Tank_IsPointingUpp = false
	angleChanged = false
}
if (x > Tank_BotPreviousX) {
	Tank_IsPointingRight = true
	Tank_IsPointingLeft = false
	if (angleChanged == true) {
		if (nextAngle == 90) nextAngle -= 45
		else nextAngle += 45
	}
	else nextAngle = 0
} else if (x < Tank_BotPreviousX) {
	Tank_IsPointingRight = false
	Tank_IsPointingLeft = true
	if (angleChanged == true) {
		if (nextAngle == 90) nextAngle += 45
		else nextAngle -= 45
	}
	else nextAngle = 180
} else {
	Tank_IsPointingRight = false
	Tank_IsPointingLeft = false	
}
Tank_PointingTo = Bot_SmoothPointingTo(Tank_PointingTo, nextAngle)
Tank_BotPreviousY = y
Tank_BotPreviousX = x
Tank_WalkingHitbox.x = x
Tank_WalkingHitbox.y = y