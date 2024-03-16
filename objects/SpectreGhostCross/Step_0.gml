/// @description The movement
if (speed > 0) {
	speed -= 0.5
	image_angle += speed
	move_bounce_solid(true)
} else instance_destroy()