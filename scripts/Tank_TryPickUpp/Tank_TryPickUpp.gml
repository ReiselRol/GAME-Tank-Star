var nearGun = instance_nearest(x, y, GroundGun)
if (nearGun != noone) {
	var distance = point_distance(x, y, nearGun.x, nearGun.y)
	if (distance <= 100) {
		var angle = point_direction(x, y, nearGun.x, nearGun.y)
		var pointing = instance_create_layer(x, y, "TankHitboxLayer", HitboxPointingTo)	
		pointing.image_xscale = distance
		pointing.image_angle = angle
		var isColliding = false
		with (pointing) {
			isColliding = (place_meeting(x, y, HitboxTile))
		}
		if (isColliding == false) {
			if (Tank_WeaponSelected == 1) {
				if (Tank_GunID != -1){
					if (Tank_GunID2 != -1) {
						Tank_DropGun()
						Tank_GunID = nearGun.Gun_ID
						Tank_GunAmmo = nearGun.Gun_Ammo
						Tank_GunMaxAmmo = nearGun.Gun_MaxAmmo
						Tank_SkinCannonChasis = nearGun.Gun_SkinCannonChasis
						Tank_SkinCannonGlow = nearGun.Gun_SkinCannonGlow
						Tank_SkinCannonPaint = nearGun.Gun_SkinCannonPaint
						Tank_SkinCannonPainted = nearGun.Gun_SkinCannonPainted
						Tank_SkinCannonPrimary = nearGun.Gun_SkinCannonPrimary
						Tank_SkinCannonSecondary = nearGun.Gun_SkinCannonSecondary
						Tank_GunPrimaryColor = nearGun.Gun_PrimaryColor
						Tank_GunSecondaryColor = nearGun.Gun_SecondaryColor
					} else {
						Tank_GunID2 = nearGun.Gun_ID
						Tank_GunAmmo2 = nearGun.Gun_Ammo
						Tank_GunMaxAmmo2 = nearGun.Gun_MaxAmmo
						Tank_SkinSecondaryCannonChasis = nearGun.Gun_SkinCannonChasis
						Tank_SkinSecondaryCannonGlow = nearGun.Gun_SkinCannonGlow
						Tank_SkinSecondaryCannonPaint = nearGun.Gun_SkinCannonPaint
						Tank_SkinSecondaryCannonPainted = nearGun.Gun_SkinCannonPainted
						Tank_SkinSecondaryCannonPrimary = nearGun.Gun_SkinCannonPrimary
						Tank_SkinSecondaryCannonSecondary = nearGun.Gun_SkinCannonSecondary
						Tank_GunPrimaryColor2 = nearGun.Gun_PrimaryColor
						Tank_GunSecondaryColor2 = nearGun.Gun_SecondaryColor
					}
				} else {
					Tank_GunID = nearGun.Gun_ID
					Tank_GunAmmo = nearGun.Gun_Ammo
					Tank_GunMaxAmmo = nearGun.Gun_MaxAmmo
					Tank_SkinCannonChasis = nearGun.Gun_SkinCannonChasis
					Tank_SkinCannonGlow = nearGun.Gun_SkinCannonGlow
					Tank_SkinCannonPaint = nearGun.Gun_SkinCannonPaint
					Tank_SkinCannonPainted = nearGun.Gun_SkinCannonPainted
					Tank_SkinCannonPrimary = nearGun.Gun_SkinCannonPrimary
					Tank_SkinCannonSecondary = nearGun.Gun_SkinCannonSecondary
					Tank_GunPrimaryColor = nearGun.Gun_PrimaryColor
					Tank_GunSecondaryColor = nearGun.Gun_SecondaryColor
				}
			} else {
				if (Tank_GunID2 != -1) {
					if (Tank_GunID != -1) {
						Tank_DropGun()
						Tank_GunID2 = nearGun.Gun_ID
						Tank_GunAmmo2 = nearGun.Gun_Ammo
						Tank_GunMaxAmmo2 = nearGun.Gun_MaxAmmo
						Tank_SkinSecondaryCannonChasis = nearGun.Gun_SkinCannonChasis
						Tank_SkinSecondaryCannonGlow = nearGun.Gun_SkinCannonGlow
						Tank_SkinSecondaryCannonPaint = nearGun.Gun_SkinCannonPaint
						Tank_SkinSecondaryCannonPainted = nearGun.Gun_SkinCannonPainted
						Tank_SkinSecondaryCannonPrimary = nearGun.Gun_SkinCannonPrimary
						Tank_SkinSecondaryCannonSecondary = nearGun.Gun_SkinCannonSecondary
						Tank_GunPrimaryColor2 = nearGun.Gun_PrimaryColor
						Tank_GunSecondaryColor2 = nearGun.Gun_SecondaryColor
					} else {
						Tank_GunID = nearGun.Gun_ID
						Tank_GunAmmo = nearGun.Gun_Ammo
						Tank_GunMaxAmmo = nearGun.Gun_MaxAmmo
						Tank_SkinCannonChasis = nearGun.Gun_SkinCannonChasis
						Tank_SkinCannonGlow = nearGun.Gun_SkinCannonGlow
						Tank_SkinCannonPaint = nearGun.Gun_SkinCannonPaint
						Tank_SkinCannonPainted = nearGun.Gun_SkinCannonPainted
						Tank_SkinCannonPrimary = nearGun.Gun_SkinCannonPrimary
						Tank_SkinCannonSecondary = nearGun.Gun_SkinCannonSecondary
						Tank_GunPrimaryColor = nearGun.Gun_PrimaryColor
						Tank_GunSecondaryColor = nearGun.Gun_SecondaryColor
					}
				} else {
					Tank_GunID2 = nearGun.Gun_ID
					Tank_GunAmmo2 = nearGun.Gun_Ammo
					Tank_GunMaxAmmo2 = nearGun.Gun_MaxAmmo
					Tank_SkinSecondaryCannonChasis = nearGun.Gun_SkinCannonChasis
					Tank_SkinSecondaryCannonGlow = nearGun.Gun_SkinCannonGlow
					Tank_SkinSecondaryCannonPaint = nearGun.Gun_SkinCannonPaint
					Tank_SkinSecondaryCannonPainted = nearGun.Gun_SkinCannonPainted
					Tank_SkinSecondaryCannonPrimary = nearGun.Gun_SkinCannonPrimary
					Tank_SkinSecondaryCannonSecondary = nearGun.Gun_SkinCannonSecondary
					Tank_GunPrimaryColor2 = nearGun.Gun_PrimaryColor
					Tank_GunSecondaryColor2 = nearGun.Gun_SecondaryColor
				}
			}
			Tank_ForceSwitchWeapon()
			instance_destroy(nearGun)
		}
	}
}
