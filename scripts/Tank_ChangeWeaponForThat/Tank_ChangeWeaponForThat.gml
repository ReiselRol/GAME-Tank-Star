var newGun = argument[0]
var isSmallGun = Tank_GunIsSmall(newGun.Gun_ID)
var weaponS = Tank_WeaponSelected
if (isSmallGun == true) {
	if (Tank_GunID > -1) {
		Tank_WeaponSelected = 1
		Tank_DropGun()
		Tank_WeaponSelected = weaponS
	}
	Tank_GunID = newGun.Gun_ID
	Tank_GunAmmo = newGun.Gun_Ammo
	Tank_GunMaxAmmo = newGun.Gun_MaxAmmo
	Tank_SkinCannonChasis = newGun.Gun_SkinCannonChasis
	Tank_SkinCannonGlow = newGun.Gun_SkinCannonGlow
	Tank_SkinCannonPaint = newGun.Gun_SkinCannonPaint
	Tank_SkinCannonPainted = newGun.Gun_SkinCannonPainted
	Tank_SkinCannonPrimary = newGun.Gun_SkinCannonPrimary
	Tank_SkinCannonSecondary = newGun.Gun_SkinCannonSecondary
	Tank_GunPrimaryColor = newGun.Gun_PrimaryColor
	Tank_GunSecondaryColor = newGun.Gun_SecondaryColor
	Tank_CannonSkin = newGun.Gun_CannonSkin
	Tank_ScopeID = newGun.Gun_ScopeID
	Skin_SetPrimaryScopeSkin(Tank_ScopeID)
} else {
	if (Tank_GunID2 > -1) {
		Tank_WeaponSelected = 2
		Tank_DropGun()
		Tank_WeaponSelected = weaponS
	}
	Tank_GunID2 = newGun.Gun_ID
	Tank_GunAmmo2 = newGun.Gun_Ammo
	Tank_GunMaxAmmo2 = newGun.Gun_MaxAmmo
	Tank_SkinSecondaryCannonChasis = newGun.Gun_SkinCannonChasis
	Tank_SkinSecondaryCannonGlow = newGun.Gun_SkinCannonGlow
	Tank_SkinSecondaryCannonPaint = newGun.Gun_SkinCannonPaint
	Tank_SkinSecondaryCannonPainted = newGun.Gun_SkinCannonPainted
	Tank_SkinSecondaryCannonPrimary = newGun.Gun_SkinCannonPrimary
	Tank_SkinSecondaryCannonSecondary = newGun.Gun_SkinCannonSecondary
	Tank_GunPrimaryColor2 = newGun.Gun_PrimaryColor
	Tank_GunSecondaryColor2 = newGun.Gun_SecondaryColor
	Tank_CannonSecondarySkin = newGun.Gun_CannonSkin
	Tank_ScopeID2 = newGun.Gun_ScopeID
	Skin_SetSecondaryScopeSkin(Tank_ScopeID2)
}