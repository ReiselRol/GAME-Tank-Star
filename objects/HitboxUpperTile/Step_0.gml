/// @description Checking Positionsd

if (visibleShader == true && isVisible == true) {
	
	if (instance_exists(TankSpecting)) {
		point_lt = point_direction(TankSpecting.x, TankSpecting.y, x , y)
		point_rt = point_direction(TankSpecting.x, TankSpecting.y, x + 32 * image_xscale, y)
		point_ld = point_direction(TankSpecting.x, TankSpecting.y, x , y + 32 * image_yscale)
		point_rd = point_direction(TankSpecting.x, TankSpecting.y, x + 32 * image_xscale, y + 32 * image_yscale)
	}
	/*
	point_lt = point_direction(mouse_x, mouse_y,x , y)
	point_rt = point_didrection(mouse_x, mouse_y,x + 32 * image_xscale, y)
	point_ld = point_direction(mouse_x, mouse_y,x , y + 32 * image_yscale)
	point_rd = point_direction(mouse_x, mouse_y,x + 32 * image_xscale, y + 32 * image_yscale)*/
}
