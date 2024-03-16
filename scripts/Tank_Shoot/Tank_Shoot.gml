if (Tank_GunAmmo > 0 && Tank_WeaponSelected == 1 && Tank_GunID > -1) {
	if (Tank_GunCooldown <= 0) {
		Tank_GunCooldown = Tank_GunGetCooldown(Tank_GunID)
		Tank_GunAmmo --
		var bulletCount = Tank_GunGetBulletCount(Tank_GunID)
		var X = x + lengthdir_x(Tank_GunGetLenght(Tank_GunID), Tank_PointingTo) * 1.6
		var Y = y + lengthdir_y(Tank_GunGetLenght(Tank_GunID), Tank_PointingTo) * 1.6
		for (var i = 0; i < bulletCount; i++) {
			var BulletProj = instance_create_layer(X, Y, "ProjsLayer", Tank_GunGetProj(Tank_GunID))
			var ShootAngle = Tank_GetDisturbedAngle()
			BulletProj.image_angle = ShootAngle
			BulletProj.direction = ShootAngle
			Damagable_MakeDamagable(BulletProj, Tank_GunGetDamage(Tank_GunID), id, Tank_GunGetPiercing(Tank_GunID), Tank_GunGetCooldownHitted(Tank_GunID), [true])
		}
		if (global.LDM == false) {
			var bulletSprite = instance_create_layer(x, y, "TankTrailLayer", BulletCase)
			var diferenceDirection = irandom(40)
			if (irandom(1) == 0) diferenceDirection *= -1
			bulletSprite.direction = Tank_PointingTo - 90 + diferenceDirection
			bulletSprite.sprite_index = Tank_GunGetBulletSprite(Tank_GunID)
		}
		AudioPlaySound(Tank_GunGetSHootSound(Tank_GunID))
	}
} else if (Tank_GunAmmo2 > 0 && Tank_WeaponSelected == 2 && Tank_GunID2 > -1) {
	if (Tank_GunCooldown <= 0) {
		Tank_GunCooldown = Tank_GunGetCooldown(Tank_GunID2)
		Tank_GunAmmo2 --
		var bulletCount = Tank_GunGetBulletCount(Tank_GunID2)
		var X = x + lengthdir_x(Tank_GunGetLenght(Tank_GunID2), Tank_PointingTo)
		var Y = y + lengthdir_y(Tank_GunGetLenght(Tank_GunID2), Tank_PointingTo)
		for (var i = 0; i < bulletCount; i++) {
			var BulletProj = instance_create_layer(X, Y, "ProjsLayer", Tank_GunGetProj(Tank_GunID2))
			var ShootAngle = Tank_GetDisturbedAngle()
			BulletProj.image_angle = ShootAngle
			BulletProj.direction = ShootAngle
			Damagable_MakeDamagable(BulletProj, Tank_GunGetDamage(Tank_GunID2), id, Tank_GunGetPiercing(Tank_GunID2), Tank_GunGetCooldownHitted(Tank_GunID2), [true])
		}
		if (global.LDM == false) {
			var bulletSprite = instance_create_layer(x, y, "TankTrailLayer", BulletCase)
			var diferenceDirection = irandom(40)
			if (irandom(1) == 0) diferenceDirection *= -1
			bulletSprite.direction = Tank_PointingTo - 90 + diferenceDirection
			bulletSprite.sprite_index = Tank_GunGetBulletSprite(Tank_GunID2)
		}
		AudioPlaySound(Tank_GunGetSHootSound(Tank_GunID2))
	}
}
else Tank_Reload()