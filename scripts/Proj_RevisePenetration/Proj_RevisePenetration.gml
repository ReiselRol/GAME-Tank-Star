if (place_meeting(x, y, HitboxTile) == true) {
	AudioPlaySound(TrasspasingBrickSound)
	Proj_HitboxPenetration--
	if (Proj_HitboxPenetration <= 0) instance_destroy()
}else if(place_meeting(x, y, HitboxTileNoShadows) == true) {
	AudioPlaySound(TrasspasingGlassSound)
	Proj_HitboxPenetration-= 0.5
	if (Proj_HitboxPenetration <= 0) instance_destroy()
}