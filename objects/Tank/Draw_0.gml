/// @description Inserte aquí la descripción
if (Tank_MainCamera = true && Tank_DrawPreShoot == true) Tank_DrawPreShootTriangle()
var moving = (Tank_Hsp == 0 && Tank_Vsp == 0)
if (Tank_IsInvisible == true) draw_set_alpha(0.5)
if (Tank_RespectTankColors == false) {
	if (Tank_WeaponSelected == 1) Tank_Draw(x, y, Tank_Scale, Tank_Angle, Tank_PrimaryColor,
				Tank_SecondaryColor, Tank_IsGlowActive, Tank_SkinWheel,
				Tank_SkinCartPrimary, Tank_SkinCartSecondary, Tank_SkinCartChasis,
				Tank_SkinCartPainted, Tank_SkinCartPaint, Tank_SkinCartGlow, Tank_GlowColor,
				Tank_SkinCannonGlow, Tank_SkinCannonPainted, Tank_SkinCannonPaint,
				Tank_SkinCannonChasis, Tank_SkinCannonPrimary, Tank_SkinCannonSecondary, Tank_PointingTo,
				Tank_GunPrimaryColor, Tank_GunSecondaryColor, moving, (Tank_GunID > -1),
				(Tank_ScopeID > -1), Tank_SkinScopeChasis, Tank_SkinScopePainted, Tank_SkinScopeGlow, Tank_SkinScopeColor)
	else Tank_Draw(x, y, Tank_Scale, Tank_Angle, Tank_PrimaryColor,
				Tank_SecondaryColor, Tank_IsGlowActive, Tank_SkinWheel,
				Tank_SkinCartPrimary, Tank_SkinCartSecondary, Tank_SkinCartChasis,
				Tank_SkinCartPainted, Tank_SkinCartPaint, Tank_SkinCartGlow, Tank_GlowColor,
				Tank_SkinSecondaryCannonGlow, Tank_SkinSecondaryCannonPainted, Tank_SkinSecondaryCannonPaint,
				Tank_SkinSecondaryCannonChasis, Tank_SkinSecondaryCannonPrimary, Tank_SkinSecondaryCannonSecondary, Tank_PointingTo,
				Tank_GunPrimaryColor2, Tank_GunSecondaryColor2, moving, (Tank_GunID2 > -1),
				(Tank_ScopeID2 > -1), Tank_SkinScopeChasis2, Tank_SkinScopePainted2, Tank_SkinScopeGlow2, Tank_SkinScopeColor2)
} else {
	if (Tank_WeaponSelected == 1) Tank_Draw(x, y, Tank_Scale, Tank_Angle, Tank_PrimaryColor,
				Tank_SecondaryColor, Tank_IsGlowActive, Tank_SkinWheel,
				Tank_SkinCartPrimary, Tank_SkinCartSecondary, Tank_SkinCartChasis,
				Tank_SkinCartPainted, Tank_SkinCartPaint, Tank_SkinCartGlow, Tank_GlowColor,
				Tank_SkinCannonGlow, Tank_SkinCannonPainted, Tank_SkinCannonPaint,
				Tank_SkinCannonChasis, Tank_SkinCannonPrimary, Tank_SkinCannonSecondary, Tank_PointingTo,
				Tank_PrimaryColor, Tank_SecondaryColor, moving, (Tank_GunID > -1),
				(Tank_ScopeID > -1), Tank_SkinScopeChasis, Tank_SkinScopePainted, Tank_SkinScopeGlow, Tank_SkinScopeColor)
	else Tank_Draw(x, y, Tank_Scale, Tank_Angle, Tank_PrimaryColor,
				Tank_SecondaryColor, Tank_IsGlowActive, Tank_SkinWheel,
				Tank_SkinCartPrimary, Tank_SkinCartSecondary, Tank_SkinCartChasis,
				Tank_SkinCartPainted, Tank_SkinCartPaint, Tank_SkinCartGlow, Tank_GlowColor,
				Tank_SkinSecondaryCannonGlow, Tank_SkinSecondaryCannonPainted, Tank_SkinSecondaryCannonPaint,
				Tank_SkinSecondaryCannonChasis, Tank_SkinSecondaryCannonPrimary, Tank_SkinSecondaryCannonSecondary, Tank_PointingTo,
				Tank_PrimaryColor, Tank_SecondaryColor, moving, (Tank_GunID2 > -1),
				(Tank_ScopeID2 > -1), Tank_SkinScopeChasis2, Tank_SkinScopePainted2, Tank_SkinScopeGlow2, Tank_SkinScopeColor2)
}
if (Tank_DrawStormHandcannon == true) draw_sprite_ext(StormHandCannon, image_index, x, y, 1.25, 1.25, Agent1_GetStormCannonAngle(), c_white, 1)
if (Tank_IsInvisible == true) draw_set_alpha(1)
if (Tank_Flashed == true) draw_sprite_ext(FlashedSprite, 0, x, y, Tank_Scale, Tank_Scale, Tank_Angle, c_white, 0.35)