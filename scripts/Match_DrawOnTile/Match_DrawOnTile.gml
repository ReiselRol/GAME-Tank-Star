if (instance_exists(Match_BulletPierce)) {
	if (surface_exists(Match_BulletPierce.Match_Tiles))	{
		surface_set_target(Match_BulletPierce.Match_Tiles)
			gpu_set_colorwriteenable(1, 1, 1, 0)
			gpu_set_blendmode(bm_dest_alpha)
			draw_self()
			gpu_set_blendmode(bm_normal)
			gpu_set_colorwriteenable(1, 1, 1, 1)
		surface_reset_target()
	}
}