/// @description Marking

if (instance_exists(Flash_TankFlashed)) {
	x = Flash_TankFlashed.x
	y = Flash_TankFlashed.y
	Flash_TankFlashed.Tank_Flashed = true
	image_xscale = Flash_TankFlashed.Camera_Zoom / Flash_TankFlashed.Camera_DefautZoom * 0.4
	image_yscale = image_xscale
	if (Flash_TimeFlash > 0) Flash_TimeFlash --
	else {
		if (Flash_VanishTime > 0) {
			Flash_VanishTime --
			image_alpha = Flash_VanishTime / Flash_MaxVanishTime
		}
		else instance_destroy()
	}
} else instance_destroy()