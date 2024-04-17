/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Particle_LifeTime = G_SetTime(1)
Particle_Direction = 1 + irandom(3)
direction = irandom(360)
speed = Particle_Direction
if (irandom(1) == 0) Particle_Direction *= -1
image_xscale = irandom(250) / 100
Particle_AngleRotator = irandom(10)
image_yscale = image_xscale
image_alpha = 0.33