/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (Particle_CanRotate == true) image_angle += 8 * speed * 2 / 1.33
if (speed > 0) speed -= 0.05 * 1.33
if (Particle_returningToInitialScale == true) {
	if (image_xscale > Particle_InitialScale) {
		image_xscale -= 0.033
		image_yscale = image_xscale
	} else instance_destroy()
} else {
	if (Particle_WaitStatus > 0) Particle_WaitStatus--
	else {
		if (image_xscale < Particle_ElevatedScale) {
			image_xscale += 0.033
			image_yscale = image_xscale
		} else Particle_returningToInitialScale = true
	}
}