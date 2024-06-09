var surfi = surface_create(room_width, room_height)
var tileSize = 32
draw_set_color(c_white)
surface_set_target(surfi)
	var X = 0
	var Y = 0
	while(X <= room_width) {
		draw_line(X, 0, X, room_height)
		X += tileSize
	}
	while(Y <= room_height) {
		draw_line(0, Y, room_width, Y)
		Y += tileSize
	}
surface_reset_target()
draw_set_color(c_white)
return surfi