/// @description Inserte aquí la descripción
if (Tank_DrawPreShoot == true) Tank_DrawPreShootTriangle()
var moving = (Tank_Hsp == 0 && Tank_Vsp == 0)
if (Tank_RespectTankColors == false) {
	if (Tank_WeaponSelected == 1) Tank_Draw(x, y, Tank_Scale, Tank_Angle, Tank_PrimaryColor,
				Tank_SecondaryColor, Tank_IsGlowActive, Tank_SkinWheel,
				Tank_SkinCartPrimary, Tank_SkinCartSecondary, Tank_SkinCartChasis,
				Tank_SkinCartPainted, Tank_SkinCartPaint, Tank_SkinCartGlow, Tank_GlowColor,
				Tank_SkinCannonGlow, Tank_SkinCannonPainted, Tank_SkinCannonPaint,
				Tank_SkinCannonChasis, Tank_SkinCannonPrimary, Tank_SkinCannonSecondary, Tank_PointingTo,
				Tank_GunPrimaryColor, Tank_GunSecondaryColor, moving, (Tank_GunID > -1))
	else Tank_Draw(x, y, Tank_Scale, Tank_Angle, Tank_PrimaryColor,
				Tank_SecondaryColor, Tank_IsGlowActive, Tank_SkinWheel,
				Tank_SkinCartPrimary, Tank_SkinCartSecondary, Tank_SkinCartChasis,
				Tank_SkinCartPainted, Tank_SkinCartPaint, Tank_SkinCartGlow, Tank_GlowColor,
				Tank_SkinSecondaryCannonGlow, Tank_SkinSecondaryCannonPainted, Tank_SkinSecondaryCannonPaint,
				Tank_SkinSecondaryCannonChasis, Tank_SkinSecondaryCannonPrimary, Tank_SkinSecondaryCannonSecondary, Tank_PointingTo,
				Tank_GunPrimaryColor2, Tank_GunSecondaryColor2, moving, (Tank_GunID2 > -1))
} else {
	if (Tank_WeaponSelected == 1) Tank_Draw(x, y, Tank_Scale, Tank_Angle, Tank_PrimaryColor,
				Tank_SecondaryColor, Tank_IsGlowActive, Tank_SkinWheel,
				Tank_SkinCartPrimary, Tank_SkinCartSecondary, Tank_SkinCartChasis,
				Tank_SkinCartPainted, Tank_SkinCartPaint, Tank_SkinCartGlow, Tank_GlowColor,
				Tank_SkinCannonGlow, Tank_SkinCannonPainted, Tank_SkinCannonPaint,
				Tank_SkinCannonChasis, Tank_SkinCannonPrimary, Tank_SkinCannonSecondary, Tank_PointingTo,
				Tank_PrimaryColor, Tank_SecondaryColor, moving, (Tank_GunID > -1))
	else Tank_Draw(x, y, Tank_Scale, Tank_Angle, Tank_PrimaryColor,
				Tank_SecondaryColor, Tank_IsGlowActive, Tank_SkinWheel,
				Tank_SkinCartPrimary, Tank_SkinCartSecondary, Tank_SkinCartChasis,
				Tank_SkinCartPainted, Tank_SkinCartPaint, Tank_SkinCartGlow, Tank_GlowColor,
				Tank_SkinSecondaryCannonGlow, Tank_SkinSecondaryCannonPainted, Tank_SkinSecondaryCannonPaint,
				Tank_SkinSecondaryCannonChasis, Tank_SkinSecondaryCannonPrimary, Tank_SkinSecondaryCannonSecondary, Tank_PointingTo,
				Tank_PrimaryColor, Tank_SecondaryColor, moving, (Tank_GunID2 > -1))
}