var surface = surface_create(room_width, room_height)
surface_set_target(surface)
draw_set_color(c_black)
draw_set_alpha(0.33)
with (HitboxTile) {
	draw_rectangle(x, y, x + 32 * image_xscale, y + 32 * image_yscale, false)	
}
draw_set_color(c_white)
draw_set_alpha(1)
surface_reset_target()
return surface