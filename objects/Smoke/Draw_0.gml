/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
BG_drawShadows()
event_user(1)
draw_sprite_ext(TeamSmokeSprite, 0, x, y, image_xscale, image_yscale, image_angle, (Smoke_Team == 0) ? c_aqua : c_red, shadowOpacity * image_alpha)