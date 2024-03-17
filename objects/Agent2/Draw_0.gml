/// @description Inserte aquí la descripción
if (instance_exists(Agent_Tank)) {
	if (Agent_Tank.Tank_IsABot == false) {
		if (Agent_TpSelected == true) draw_sprite_ext(SpectreTp, 1, x, y, 1, 1, 0, (Agent_canTp == true) ? c_white : c_red, 1)
		else if (Agent_GonnaThrowGhostCross == true) draw_sprite_ext(ThrowingToSprite, 0, Agent_Tank.x, Agent_Tank.y, 2, 0.7, Agent_Tank.Tank_PointingTo, c_white, 0.6)
		else if (Agent_EyeSelected == true) draw_sprite_ext(SpectreEyeSprite, 1, mouse_x, mouse_y, 1.5, 1.5, 0, c_white, 0.6)
	}
}