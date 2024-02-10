if (Tank_HasTheSpike == true && Tank_IsBombKeyPressed == true) Tank_DropSpike()
else if ((Tank_WeaponSelected == 1 && Tank_GunID > -1) || (Tank_WeaponSelected == 2 && Tank_GunID2 > -1)) {
	var newGun = instance_create_layer(x, y, "LetalHitboxLayer", GroundGun)
	var gunDir = (Tank_Health > 0) ? Tank_PointingTo : irandom(360)
	newGun.direction = gunDir
	newGun.image_angle = gunDir
	newGun.Gun_Scale = Tank_Scale

	if (Tank_WeaponSelected == 1) {
		newGun.Gun_Ammo = Tank_GunAmmo
		newGun.Gun_ID = Tank_GunID
		newGun.Gun_MaxAmmo = Tank_GunMaxAmmo
		newGun.Gun_SkinCannonChasis = Tank_SkinCannonChasis
		newGun.Gun_SkinCannonPaint = Tank_SkinCannonPaint
		newGun.Gun_SkinCannonPainted = Tank_SkinCannonPainted
		newGun.Gun_SkinCannonPrimary = Tank_SkinCannonPrimary
		newGun.Gun_SkinCannonSecondary = Tank_SkinCannonSecondary
		newGun.Gun_SkinCannonGlow = Tank_SkinCannonGlow
		newGun.Gun_PrimaryColor = Tank_GunPrimaryColor
		newGun.Gun_SecondaryColor = Tank_GunSecondaryColor
		newGun.Gun_CannonSkin = Tank_CannonSkin
		
		newGun.Gun_ScopeID = Tank_ScopeID
		newGun.Gun_ScopeChasis = Tank_SkinScopeChasis
		newGun.Gun_ScopeColor = Tank_SkinScopeColor
		newGun.Gun_ScopePainted = Tank_SkinScopePainted
		newGun.Gun_ScopeGlow = Tank_SkinScopeGlow
		Tank_GunID = -1
		Tank_ScopeID = -1
	} else {
		newGun.Gun_Ammo = Tank_GunAmmo2
		newGun.Gun_ID = Tank_GunID2
		newGun.Gun_MaxAmmo = Tank_GunMaxAmmo2
		newGun.Gun_SkinCannonChasis = Tank_SkinSecondaryCannonChasis
		newGun.Gun_SkinCannonPaint = Tank_SkinSecondaryCannonPaint
		newGun.Gun_SkinCannonPainted = Tank_SkinSecondaryCannonPainted
		newGun.Gun_SkinCannonPrimary = Tank_SkinSecondaryCannonPrimary
		newGun.Gun_SkinCannonSecondary = Tank_SkinSecondaryCannonSecondary
		newGun.Gun_SkinCannonGlow = Tank_SkinSecondaryCannonGlow
		newGun.Gun_PrimaryColor = Tank_GunPrimaryColor2
		newGun.Gun_SecondaryColor = Tank_GunSecondaryColor2
		newGun.Gun_CannonSkin = Tank_CannonSecondarySkin
		
		newGun.Gun_ScopeID = Tank_ScopeID2
		newGun.Gun_ScopeChasis = Tank_SkinScopeChasis2
		newGun.Gun_ScopeColor = Tank_SkinScopeColor2
		newGun.Gun_ScopePainted = Tank_SkinScopePainted2
		newGun.Gun_ScopeGlow = Tank_SkinScopeGlow2
		Tank_GunID2 = -1
		Tank_ScopeID2 = -1
	}
	Tank_DropCooldown = Tank_MaxDropCooldown
	AudioPlaySound(GunDropSound)
	Tank_FixWeaponSelection()
}