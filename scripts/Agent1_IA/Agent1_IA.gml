if (Match.Match_ShopTime == false) {
	if (irandom(600 - Agent_Tank.Tank_BotElo / 3) <= 0) Agent_Tank.Tank_EKeyPressed = true
	else Agent_Tank.Tank_EKeyPressed = false
	if (irandom(700 - Agent_Tank.Tank_BotElo / 4) <= 0 && Agent_Tank.Tank_QHability > 0) {
		if (instance_exists(Agent_Tank.Camera_CameraHitbox)) {
			if (instance_position(Agent_Tank.Tank_BotNextX, Agent_Tank.Tank_BotNextY, Agent_Tank.Camera_CameraHitbox) != noone) {
				Agent_Tank.Tank_QKeyPressed = true
				Agent_Tank.Tank_IsShootTapping = true
			}
		}
	} else Agent_Tank.Tank_QKeyPressed = false
	if (irandom(700 - Agent_Tank.Tank_BotElo / 5) <= 0 && Agent_Tank.Tank_CHability > 0) {
		Agent_Tank.Tank_CKeyPressed = true
		Agent_Tank.Tank_IsShootTapping = true
	} else Agent_Tank.Tank_CKeyPressed = false
	if (irandom(1500 - Agent_Tank.Tank_BotElo / 3) <= 0 && Agent_Tank.Tank_KHability == Agent_Tank.Tank_MaxKHability) {
		Agent_Tank.Tank_KKeyPressed = true
	} else Agent_Tank.Tank_KKeyPressed = false
}