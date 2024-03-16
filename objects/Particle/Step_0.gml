/// @description Particle Core

if (Particle_LifeTime > 0) {
	
	Particle_Rotate *= Particle_RotAcceleration
	
	if (place_meeting(x, y, HitboxTile) == true) {
		Particle_Speed = 0
		Particle_Rotate = 0
	} else if (place_meeting(x, y, HitboxTileNoShadows) == true) {
		Particle_Speed = 0
		Particle_Rotate = 0
	}
	
	speed *= Particle_Acceleration
	image_angle += Particle_Rotate * Particle_RotDir
	Particle_LifeTime --
	
} else instance_destroy()