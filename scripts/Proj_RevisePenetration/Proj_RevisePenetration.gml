if (place_meeting(x, y, HitboxTile) == true) {
	var tile = instance_place(x, y, HitboxTile)
	AudioPlaySound(TrasspasingBrickSound)
	Proj_HitboxPenetration -= tile.Tile_strenght
	if (Proj_HitboxPenetration <= 0) instance_destroy()
}else if(place_meeting(x, y, HitboxTileNoShadows) == true) {
	AudioPlaySound(TrasspasingGlassSound)
	Proj_HitboxPenetration-= 0.25
	if (Proj_HitboxPenetration <= 0) instance_destroy()
}