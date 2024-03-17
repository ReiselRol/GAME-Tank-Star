
if (instance_exists(SpectreEye_TankId)) {
	if (SpectreEye_IsSpawning == true) {
		if (image_xscale < SpectreEye_Scale) {
			image_xscale += 0.1
			image_yscale += 0.1
		} else SpectreEye_IsSpawning = false
	} else if (SpectreEye_Time > 0){
		SpectreEye_Time --
		var me = id
		with (Tank) {
			if (id != me.SpectreEye_TankId && me.SpectreEye_TankId.Tank_Team != Tank_Team) {
				if (point_distance(me.SpectreEye_TankId.x, me.SpectreEye_TankId.y, x, y) < me.SpectreEye_Range) {
					if (collision_line(me.x, me.y, x, y, HitboxTile, false, true) == noone &&
					collision_line(me.x, me.y, x, y, HitboxTileNoShadows, false, true) == noone) Match_MarkTank(id, G_SetTime(3))
				}
			}
		}
	} else SpectreEyeIsDespawinng = true
}
else SpectreEyeIsDespawinng = true

if (SpectreEyeIsDespawinng == true) {
	if (image_xscale > 0) {
			image_xscale -= 0.1
			image_yscale -= 0.1
	} else instance_destroy()
}