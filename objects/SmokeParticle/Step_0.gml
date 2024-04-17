/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (Particle_LifeTime > 0) {
	Particle_LifeTime --
	if (Particle_Direction > 0) Particle_Direction-= 0.1
	else if (Particle_Direction < 0) Particle_Direction+= 0.1
} else {
	if (image_alpha > 0) image_alpha -= 0.01
	else instance_destroy()
}
speed = Particle_Direction
image_angle += Particle_AngleRotator
y -= 4