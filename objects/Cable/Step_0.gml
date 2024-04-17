/// @description Settup the Settup
if (Cable_Setted == true) {
	if (Cable_Master == true) {
		if (Cable_Stopped == false) {
			if (place_meeting(x, y, HitboxTile)) {
				Cable_Stopped = true
				speed = 0
			}
		} else if (Cable_LaserSetted == false) {
			var thisTile = instance_place(x, y, HitboxTile)
		}
	}
}