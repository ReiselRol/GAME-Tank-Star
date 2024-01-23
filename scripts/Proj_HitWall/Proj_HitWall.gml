var skin = argument[0]
var totalPart = 3 + irandom(3)
var angle = image_angle + 180
for (var i = 0; i < totalPart; i++){
	var dispersion = irandom(45)
	var realAngle = angle
	if (irandom(1) == 0) realAngle -= dispersion
	else realAngle += dispersion
	var particle = instance_create_layer(x, y, "TankHitboxLayer", BulletParticle)
	particle.image_angle = realAngle
	particle.direction = realAngle
	particle.sprite_index = skin
}