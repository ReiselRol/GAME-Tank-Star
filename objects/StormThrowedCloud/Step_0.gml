/// @description Pasoo
if (distance_to_point(StormCloud_GoToX, StormCloud_GoToY) <= speed) instance_destroy()
else move_towards_point(StormCloud_GoToX, StormCloud_GoToY, speed)