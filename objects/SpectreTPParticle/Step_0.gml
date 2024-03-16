/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (SpectreTPProj_TimeToDisapear > 0) {
	SpectreTPProj_TimeToDisapear --
	var LifePercentaage = SpectreTPProj_TimeToDisapear / SpectreTPProj_MaxTimeToDisapear
	image_alpha = 0.2 + LifePercentaage
	image_xscale = 2 + LifePercentaage
	image_yscale = 2 + LifePercentaage
	image_angle += 6 
} else instance_destroy()