if (instance_exists(Match_GroundParticle)) {
	surface_set_target(Match_GroundParticle.Match_surface)
	draw_self()
	surface_reset_target()
}