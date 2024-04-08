if (instance_exists(Match)) {
	surface_set_target(Match.Match_surface)
	draw_self()
	surface_reset_target()
}