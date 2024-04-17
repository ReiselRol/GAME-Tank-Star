if (Agent_Tank.Tank_CKeyPressed == true && Agent_Tank.Tank_CHability > 0 && Match.Match_IsShopTime == false) {
	if (Agent_isCActived == true) Agent_isCActived = false
	else {
		Agent_isCActived = true
		Agent_isQActived = false
	}
}
if (Agent_isCActived == true) {
	Agent_Tank.Tank_CanShoot = false
	Agent_Tank.Tank_CanScope = false
	Agent_Tank.Tank_DrawPreShoot = false
	if (Agent_Tank.Tank_IsShootTapping == true) {
		Agent_Tank.Tank_GunCooldown = 20
		Agent_Tank.Tank_GunCooldown = 10
		if (Agent_Tank.Tank_IsPointingUpp == true) var RpointAngle = 90
		else if (Agent_Tank.Tank_IsPointingDown == true) var RpointAngle = 270	
		else if (Agent_Tank.Tank_IsPointingLeft == true) var RpointAngle = 180
		else if (Agent_Tank.Tank_IsPointingRight == true) var RpointAngle = 0	
		else var RpointAngle = G_RoundAngle(Agent_Tank.Tank_Angle)
		
		var X1S = 0.3
		var X2S = 0.3
		var Y1S = 0.3
		var Y2S = 0.3
		
		if (RpointAngle == 0 || RpointAngle == 360) Y1S *= -1
		else if (RpointAngle == 90) X1S *= -1
		else if (RpointAngle == 180) Y2S *= -1
		else X2S *= -1
		Agent_isCActived = false
		var distanceToTank = 40
		var X1 = Agent_Tank.x + lengthdir_x(distanceToTank, RpointAngle + 90)
		var X2 = Agent_Tank.x + lengthdir_x(distanceToTank, RpointAngle - 90)
		var Y1 = Agent_Tank.y + lengthdir_y(distanceToTank, RpointAngle + 90)
		var Y2 = Agent_Tank.y + lengthdir_y(distanceToTank, RpointAngle - 90)
		var screen1 = instance_create_layer(X2, Y2, "SmokeLayers", StormScreen)
		screen1.Smoke_Team = Agent_Tank.Tank_Team
		screen1.Smoke_Direction = RpointAngle
		screen1.image_xscale = X2S
		screen1.image_yscale = Y2S
	
		var screen2 = instance_create_layer(X1, Y1, "SmokeLayers", StormScreen)
		screen2.Smoke_Team = Agent_Tank.Tank_Team
		screen2.Smoke_Direction = RpointAngle
		screen2.image_xscale = X1S
		screen2.image_yscale = Y1S

		with (Agent_Tank) AudioPlaySound(StormUppingScreen)
		if (Match.Match_UlimitedHabilities == false) Agent_Tank.Tank_CHability --
	}
} else if (Agent_isCActived == false && Agent_isQActived == false){
	Agent_Tank.Tank_CanShoot = true
	Agent_Tank.Tank_CanScope = true
	Agent_Tank.Tank_DrawPreShoot = true
}