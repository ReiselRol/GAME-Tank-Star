var minimap = surface_create(room_width, room_height)
var square = 32
var alpha = 0.7
if (surface_exists(minimap)) {
    surface_set_target(minimap)
	draw_set_alpha(alpha)
    draw_set_color(c_white)
	draw_rectangle(0, 0, room_width, room_height, false)
	draw_set_alpha(1)
	draw_set_color(c_black)
	draw_rectangle(0, 0, room_width, room_height, true)
	with (HitboxZoneA) draw_sprite_ext(HitboxZoneASpriteG, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, alpha)
	with (HitboxZoneB) draw_sprite_ext(HitboxZoneBSpriteG, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, alpha)
	with (HitboxZoneC) draw_sprite_ext(HitboxZoneCSpriteG, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, alpha)
	with (HitboxTile) {
		if (Tile_strenght == Tile_BoxStrength) {
			draw_set_color(c_orange)
			draw_rectangle(x, y, x + image_xscale * square, y + image_yscale * square, false)
			draw_set_color(c_black)
			draw_rectangle(x, y, x + image_xscale * square, y + image_yscale * square, true)
		}
		else draw_rectangle(x, y, x + image_xscale * square, y + image_yscale * square, false)
	}
	draw_set_color(c_aqua)
	with (HitboxTileNoShadows) {
		draw_rectangle(x, y, x + image_xscale * square, y + image_yscale * square, false)
	}
    surface_reset_target();
}
return minimap