
if (instance_exists(SpectreGhostCross_TankID)) {
	if (other.Tank_Team != SpectreGhostCross_TankID.Tank_Team) instance_destroy()
}