var nearGun = instance_nearest(x, y, GroundGun)
if (nearGun != noone) {
	var distance = point_distance(x, y, nearGun.x, nearGun.y)
	if (distance <= 100) {
		var angle = point_direction(x, y, nearGun.x, nearGun.y)
		var pointing = instance_create_layer(x, y, "TankHitboxLayer", HitboxPointingTo)	
		pointing.image_xscale = distance
		pointing.image_angle = angle
		var isColliding = false
		with (pointing) {
			isColliding = (place_meeting(x, y, HitboxTile))
		}
		if (isColliding == false) {
			Tank_ChangeWeaponForThat(nearGun)
			Tank_ForceSwitchWeapon()
			instance_destroy(nearGun)
		}
	}
}
