draw_set_alpha(0.25)
draw_surface(Match_DebugGridSurface, 0, 0)
draw_set_alpha(1)
var text = "CPU Frames: " + string(fps) + 
		   "\nFPS: " + string(fps_real) +
		   "\nTotal Tanks: " + string(Match_CountTotalTanks())+
		   "\nBot Elo: " + string(Match_elo) + 
		   "\nWVW: " + string(window_get_width()) + 
		   "\nWVH: " + string(window_get_height())
																			  
draw_text_ext_transformed(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), text, 15, 7000, 1, 1, 0)
with(BotTank) {
	var lifeScale = 0.5
	draw_set_color(c_dkgray)
	draw_rectangle(x - 75 * lifeScale, y + 60 * lifeScale, x + 75 * lifeScale, y + 70 * lifeScale, false)
	draw_set_color(c_lime)
	draw_rectangle(x - 75 * lifeScale, y + 60 * lifeScale, x - 75 * lifeScale + (Tank_Health + Tank_Shield) * lifeScale, y + 70 * lifeScale, false)
	draw_set_color(c_black)
	draw_rectangle(x - 75 * lifeScale, y + 60 * lifeScale, x + 75 * lifeScale, y + 70 * lifeScale, true)
	draw_sprite_ext(Tank_SkinCartGlow, 0, x, y, image_xscale, image_yscale, Tank_Angle, Tank_GlowColor, 1)
	if (instance_exists(Tank_BotPointingTo))draw_sprite_ext(HitboxPointingToDebugSprite, 0, Tank_BotPointingTo.x, Tank_BotPointingTo.y, Tank_BotPointingTo.image_xscale, Tank_BotPointingTo.image_yscale * 3, Tank_BotPointingTo.image_angle, (Tank_GlowColor == c_red) ? c_fuchsia : c_blue, 1)
	if (path_exists(path_index)) {
		draw_set_color(Tank_GlowColor)
		draw_path(path_index, x, y, true)
	}
}
draw_set_color(c_white)
