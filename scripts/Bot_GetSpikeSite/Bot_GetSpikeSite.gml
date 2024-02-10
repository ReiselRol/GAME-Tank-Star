var zone = 0
if (instance_exists(Spike)) {
	with (Spike) {
		if (place_meeting(x, y, HitboxZoneB)) zone = 1
		else if (place_meeting(x, y, HitboxZoneC)) zone = 2
	}
}
return zone