/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (Cable_Master == true) {
	var tankMain = noone
	with (Tank) {
		if (Tank_MainCamera == true) {
			tankMain = id
			break
		}
	}
	if (tankMain != noone) {
		var distance = abs(tankMain.y - y)
		if (Cable_vertical == true) distance = abs(tankMain.x - x)
		if (instance_exists(Cable_Brother)) {
			var color = c_white
			with (Cable_TankID) color = Bot_GetBotColor()
			if (distance < Cable_DetectionDistance) {
				draw_set_alpha( 1 - distance / Cable_DetectionDistance)
				draw_line_color(x, y, Cable_Brother.x, Cable_Brother.y, color, color)
				draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1 - distance / Cable_DetectionDistance)
				draw_sprite_ext(sprite_index, image_index, Cable_Brother.x, Cable_Brother.y, Cable_Brother.image_xscale, Cable_Brother.image_yscale, Cable_Brother.image_angle, c_white, 1 - distance / Cable_DetectionDistance)
				draw_set_alpha(1)
			}
		}
		draw_self()
		if (instance_exists(Cable_Brother)) draw_sprite_ext(sprite_index, image_index, Cable_Brother.x, Cable_Brother.y, Cable_Brother.image_xscale, Cable_Brother.image_yscale, Cable_Brother.image_angle, c_white, Cable_Brother.image_alpha)
	}
}