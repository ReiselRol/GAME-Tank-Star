/// @description Inserte aquí la descripción
if (Agent_TpSelected == true) draw_sprite_ext(SpectreTp, 1, x, y, 1, 1, 0, (Agent_canTp == true) ? c_white : c_red, 1)
else if (Agent_GonnaThrowGhostCross == true) draw_sprite_ext(ThrowingToSprite, 0, Agent_Tank.x, Agent_Tank.y, 2, 0.7, Agent_Tank.Tank_PointingTo, c_white, 0.6)	