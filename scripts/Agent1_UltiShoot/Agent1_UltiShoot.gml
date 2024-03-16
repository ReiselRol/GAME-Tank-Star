if (Agent_GunCooldown <= 0) {
	var me = id
	Agent_GunCooldown = irandom(Agent_GunMaxCooldown) + 2
	var Agent_GunDir = 0
	var X = 0
	var Y = 0
	with (Agent_Tank) {
		Agent_GunDir = Agent1_GetStormCannonAngle()
		var scale = 1.25
		var height = sprite_get_height(StormHandCannon) * 0.8 * scale
		var width = sprite_get_width(StormHandCannon) * 0.6 * scale
		X = x + lengthdir_x(height, Tank_PointingTo - 90)
		Y = y + lengthdir_y(width, Tank_PointingTo - 90)	
	}
	var BulletProj = instance_create_layer(X, Y, "ProjsLayer", LightingBullet)
	var ShootAngle = Agent_GunDir + (irandom(1) - irandom(1))
	BulletProj.image_angle = ShootAngle
	BulletProj.direction = ShootAngle
	with (Agent_Tank) Damagable_MakeDamagable(BulletProj, me.Agent_GunGamage, id, 0, 1, [false])
	if (global.LDM == false) {
			var bulletSprite = instance_create_layer(X, Y, "TankTrailLayer", BulletCase)
			var diferenceDirection = irandom(40)
			if (irandom(1) == 0) diferenceDirection *= -1
			bulletSprite.direction = Agent_GunDir - 90 + diferenceDirection
			bulletSprite.sprite_index = LightingBulletCaseSprite
		}
	with (Agent_Tank) AudioPlaySound(StormHandCannonShoot)
} else Agent_GunCooldown --