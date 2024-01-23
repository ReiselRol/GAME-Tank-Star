/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (Particle_TimeBeforeFade > 0) Particle_TimeBeforeFade --
else {
	if (image_alpha > 0) image_alpha -= 0.05
	else instance_destroy()
}
if (Particle_CanRotate == true) image_angle += 8 * speed * 2 / 1.33
if (speed > 0) speed -= 0.05 * 1.33