/// @description Marking

if (instance_exists(Mark_TankMarked)) {
	if (Mark_TimeMark > 0) Mark_TimeMark --
	else instance_destroy()
} else instance_destroy()