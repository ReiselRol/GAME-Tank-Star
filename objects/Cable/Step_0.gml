/// @description Settup the Settup
if (instance_exists(Cable_TankID)) {
	if (Cable_vertical == true) image_angle = 90
	if (Cable_Setted == true) {
		if (Cable_Stopped == false) {
				if (place_meeting(x, y, HitboxTile)) {
					if (instance_place(x, y, HitboxTile) != Cable_IgnoreHittbox) {
						Cable_Stopped = true
						speed = 0
					}
				} 
			}
		else if (Cable_Master == true) {
			 if (Cable_BrotherSetted == false) {
				var thisTile = instance_place(x, y, HitboxTile)
				if (Cable_vertical == true) {
					if (Cable_initialY > y) {
						Cable_Brother = instance_create_layer(x, y, "ProjsLayer", Cable)
						Cable_Brother.speed = Cable_InitialSpeed
						Cable_Brother.direction = 270
						Cable_Brother.Cable_MaxTimeToMark = Cable_MaxTimeToMark
						Cable_Brother.Cable_vertical = true
						Cable_Brother.Cable_IgnoreHittbox = thisTile
						Cable_Brother.Cable_Master = false
						Cable_Brother.Cable_TankID = Cable_TankID
						Cable_BrotherSetted = true
					} else {
						Cable_Brother = instance_create_layer(x, y, "ProjsLayer", Cable)
						Cable_Brother.speed = Cable_InitialSpeed
						Cable_Brother.direction = 90
						Cable_Brother.Cable_MaxTimeToMark = Cable_MaxTimeToMark
						Cable_Brother.Cable_vertical = true
						Cable_Brother.Cable_IgnoreHittbox = thisTile
						Cable_Brother.Cable_Master = false
						Cable_Brother.Cable_TankID = Cable_TankID
						Cable_BrotherSetted = true
					}
				} else {
					if (Cable_initialX > x) {
						Cable_Brother = instance_create_layer(x, y, "ProjsLayer", Cable)
						Cable_Brother.speed = Cable_InitialSpeed
						Cable_Brother.direction = 0
						Cable_Brother.Cable_MaxTimeToMark = Cable_MaxTimeToMark
						Cable_Brother.Cable_vertical = false
						Cable_Brother.Cable_IgnoreHittbox = thisTile
						Cable_Brother.Cable_Master = false
						Cable_Brother.Cable_TankID = Cable_TankID
						Cable_BrotherSetted = true
					} else {
						Cable_Brother = instance_create_layer(x, y, "ProjsLayer", Cable)
						Cable_Brother.speed = Cable_InitialSpeed
						Cable_Brother.direction = 180
						Cable_Brother.Cable_MaxTimeToMark = Cable_MaxTimeToMark
						Cable_Brother.Cable_vertical = false
						Cable_Brother.Cable_IgnoreHittbox = thisTile
						Cable_Brother.Cable_Master = false
						Cable_Brother.Cable_TankID = Cable_TankID
						Cable_BrotherSetted = true
					}
				}
			} else if (instance_exists(Cable_Brother)) {
				if (Cable_Brother.Cable_Stopped == false) {
					if (Cable_Returning == false) {
						if (point_distance(x, y, Cable_Brother.x, Cable_Brother.y) > Cable_MaxDistance) {
							Cable_Brother.speed *= -1
							Cable_Returning = true
						}
					}
				} else if (Cable_Brother.Cable_Stopped == true){
					if (image_alpha > 0.1) {
						image_alpha -= 0.025
						Cable_Brother.image_alpha = image_alpha
					}
				} if (Cable_TimeToMark == 0 && instance_exists(Cable_Brother)) {
					var list = ds_list_create()
					collision_line_list(x, y, Cable_Brother.x, Cable_Brother.y, Tank, true, true, list, false )
					var listSize = ds_list_size(list)
					if (listSize > 0) {
						var enemieSpooted = false
						for (var i = 0; i < listSize; i++) {
							var tanky = ds_list_find_value(list, i)
							if (tanky.Tank_Team != Cable_TankID.Tank_Team) {
								Match_MarkTank(tanky, Cable_TimeMarking)
								enemieSpooted = true
							}
						}
						if (enemieSpooted == true) {
							event_user(1)
							Cable_TimeToMark = Cable_MaxTimeToMark
						}
					}
				} else Cable_TimeToMark --
			}
		}
	}
} else instance_destroy()
if (Cable_Returning == true) {
	if (instance_exists(Cable_Brother)) {
		if (place_meeting(x, y, Cable_Brother))	{
			instance_destroy()
			event_user(2)
		}
	}
}
if (Cable_BrotherSetted == true && instance_exists(Cable_Brother) == false) instance_destroy()