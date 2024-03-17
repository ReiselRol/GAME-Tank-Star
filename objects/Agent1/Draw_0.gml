/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(Agent_Tank)) {
	if (Agent_Tank.Tank_IsABot == false) {
		if (Agent_isQActived == true) {
			var smokeAlpha = 0.5
			var smokeScale = 3
			var smokeSize = 100 * smokeScale
			var smokeMiddle = smokeSize / 2
			draw_sprite_ext(SmokeSign, 0, mouse_x - smokeMiddle, mouse_y - smokeMiddle, smokeScale, smokeScale, 0, c_white, smokeAlpha)
		} else if (Agent_isCActived == true) {
			var smokeAlpha = 0.5
			if (Agent_Tank.Tank_IsPointingUpp == true) var RpointAngle = 90
			else if (Agent_Tank.Tank_IsPointingDown == true) var RpointAngle = 270	
			else if (Agent_Tank.Tank_IsPointingLeft == true) var RpointAngle = 180
			else if (Agent_Tank.Tank_IsPointingRight == true) var RpointAngle = 0	
			else var RpointAngle = G_RoundAngle(Agent_Tank.Tank_Angle)
			var distanceToTank = 40
			var screenScale = 0.3
			var X1 = Agent_Tank.x + lengthdir_x(distanceToTank, RpointAngle + 90)
			var X2 = Agent_Tank.x + lengthdir_x(distanceToTank, RpointAngle - 90)
			var Y1 = Agent_Tank.y + lengthdir_y(distanceToTank, RpointAngle + 90)
			var Y2 = Agent_Tank.y + lengthdir_y(distanceToTank, RpointAngle - 90)
			if (RpointAngle == 0 || RpointAngle == 360) {
				draw_sprite_ext(SmokePointingSign, 0, X1, Y1, screenScale, screenScale * -1, 0, c_white, smokeAlpha)
				draw_sprite_ext(SmokePointingSign, 0, X2, Y2, screenScale, screenScale, 0, c_white, smokeAlpha)
			} else if (RpointAngle == 90) {
				draw_sprite_ext(SmokePointingSign, 1, X1, Y1, screenScale * -1, screenScale, 0 , c_white, smokeAlpha)
				draw_sprite_ext(SmokePointingSign, 1, X2, Y2, screenScale, screenScale, 0, c_white, smokeAlpha)
			} else if (RpointAngle == 180) {
				draw_sprite_ext(SmokePointingSign, 2, X1, Y1, screenScale, screenScale , 0, c_white, smokeAlpha)
				draw_sprite_ext(SmokePointingSign, 2, X2, Y2, screenScale, screenScale * -1, 0, c_white, smokeAlpha)
			} else {
				draw_sprite_ext(SmokePointingSign, 3, X1, Y1, screenScale, screenScale, 0, c_white, smokeAlpha)
				draw_sprite_ext(SmokePointingSign, 3, X2, Y2, screenScale * -1, screenScale, 0, c_white, smokeAlpha)
			}
		}
	}
}