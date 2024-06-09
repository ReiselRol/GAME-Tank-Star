if (irandom(600 - Agent_Tank.Tank_BotElo / 5) <= 0) Agent_Tank.Tank_EKeyPressed = true
else Agent_Tank.Tank_EKeyPressed = false
if (irandom(1000 - Agent_Tank.Tank_BotElo / 5) <= 0 && Agent_Tank.Tank_QHability > 0 && Match.Match_IsShopTime == false) {
		Agent_Tank.Tank_QKeyPressed = true
		Agent_ParasyteCableVertical = (irandom(1) == 0)
		Agent_Tank.Tank_IsShootTapping = true
} else Agent_Tank.Tank_QKeyPressed = false