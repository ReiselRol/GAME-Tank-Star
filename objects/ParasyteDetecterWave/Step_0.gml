/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(ParasyteDetecterWave_TankID)) {
	if (image_xscale < ParasyteDetecterWave_MaxScale) {
		image_xscale += 0.25
		image_yscale = image_xscale
	} else if (image_alpha > 0) {
		image_alpha -= 0.05
	} else instance_destroy()
} else instance_destroy()