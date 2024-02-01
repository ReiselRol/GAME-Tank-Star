/// @description Copy The follower :)
if (Damage_Cooldown > 0) Damage_Cooldown--
if (instance_exists(Damage_ToFollow)) {
	image_xscale = Damage_ToFollow.image_xscale
	image_yscale = Damage_ToFollow.image_yscale
	image_angle = Damage_ToFollow.image_angle
	x = Damage_ToFollow.x
	y = Damage_ToFollow.y
} else instance_destroy()