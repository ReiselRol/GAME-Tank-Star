if (visibleShader == true) {
	
	if (instance_exists(TankSpecting)) {
		point_lt = point_direction(TankSpecting.x, TankSpecting.y, x , y)
		point_rt = point_direction(TankSpecting.x, TankSpecting.y, x + shadowSize * image_xscale, y)
		point_ld = point_direction(TankSpecting.x, TankSpecting.y, x , y + shadowSize * image_yscale)
		point_rd = point_direction(TankSpecting.x, TankSpecting.y, x + shadowSize * image_xscale, y + shadowSize * image_yscale)
	}
}
