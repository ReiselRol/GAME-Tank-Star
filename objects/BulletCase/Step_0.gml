/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (Particle_CanRotate == true) image_angle += 8 * speed * 2 / 1.33
if (speed > 0) speed -= 0.05 * 1.33
else instance_destroy()