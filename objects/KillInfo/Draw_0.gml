/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var XKiller = 30
var YKiller = 23
var XGun = 90
var XKilled = 30 + 135
var color0 = (KillInfo_KillerTeam == 0) ? c_aqua : c_red
var color1 = (color0 == c_aqua) ? c_red : c_aqua
var wScale = (KillInfo_TankScale + 0.4) * KillInfo_ScaleFixer
if (KillInfo_Main == 0) color0 = c_yellow
else if (KillInfo_Main == 1) color1 = c_yellow
draw_sprite_ext(KillInfoSprite, 0, x, y, KillInfo_Scale * KillInfo_ScaleFixer, KillInfo_Scale * KillInfo_ScaleFixer, 0, color0, image_alpha)
draw_sprite_ext(KillInfoSprite, 1, x, y, KillInfo_Scale * KillInfo_ScaleFixer, KillInfo_Scale * KillInfo_ScaleFixer, 0, color1, image_alpha)
if (KillInfo_FromExist == true) {
Tank_Draw(x + XKiller*KillInfo_ScaleFixer, y + YKiller*KillInfo_ScaleFixer, KillInfo_TankScale * KillInfo_ScaleFixer, KillInfo_PointingTo, Tank_PrimaryColor,
			Tank_SecondaryColor, true, Tank_SkinWheel,
			Tank_SkinCartPrimary, Tank_SkinCartSecondary, Tank_SkinCartChasis,
			Tank_SkinCartPainted, Tank_SkinCartPaint, true, color0,
			Tank_SkinCannonGlow, Tank_SkinCannonPainted, Tank_SkinCannonPaint,
			Tank_SkinCannonChasis, Tank_SkinCannonPrimary, Tank_SkinCannonSecondary, KillInfo_PointingTo,
			Tank_GunPrimaryColor, Tank_GunSecondaryColor, false, true,
			(Tank_ScopeID > -1), Tank_SkinScopeChasis, Tank_SkinScopePainted, Tank_SkinScopeGlow, Tank_SkinScopeColor)
var skinparts = Skin_GunGetSkin(KillInfo_KillerGun, 0)
	if (Tank_ScopeID > -1) {
		var separation = 8
		draw_sprite_ext(ds_list_find_value(skinparts, 4), 0, x + XGun*KillInfo_ScaleFixer, y + (YKiller - separation)*KillInfo_ScaleFixer, wScale, wScale, KillInfo_PointingTo, make_color_rgb(100,100,100), image_alpha)
		draw_sprite_ext(ds_list_find_value(skinparts, 3), 0, x + XGun*KillInfo_ScaleFixer, y + (YKiller - separation)*KillInfo_ScaleFixer, wScale, wScale, KillInfo_PointingTo, make_color_rgb(70,70,70), image_alpha)
		draw_sprite_ext(ds_list_find_value(skinparts, 2), 0, x + XGun*KillInfo_ScaleFixer, y + (YKiller - separation)*KillInfo_ScaleFixer, wScale, wScale, KillInfo_PointingTo, c_white, image_alpha)
		
		draw_sprite_ext(Tank_SkinScopeColor, 0, x + XGun*KillInfo_ScaleFixer, y + (YKiller + separation)*KillInfo_ScaleFixer, wScale, wScale, KillInfo_PointingTo, make_color_rgb(100,100,100), image_alpha)
		draw_sprite_ext(Tank_SkinScopeChasis, 0, x + XGun*KillInfo_ScaleFixer, y + (YKiller + separation)*KillInfo_ScaleFixer, wScale, wScale, KillInfo_PointingTo, c_white, image_alpha)		
	}
	else {
		draw_sprite_ext(ds_list_find_value(skinparts, 4), 0, x + XGun*KillInfo_ScaleFixer, y + YKiller*KillInfo_ScaleFixer, wScale, wScale, KillInfo_PointingTo, make_color_rgb(100,100,100), image_alpha)
		draw_sprite_ext(ds_list_find_value(skinparts, 3), 0, x + XGun*KillInfo_ScaleFixer, y + YKiller*KillInfo_ScaleFixer, wScale, wScale, KillInfo_PointingTo, make_color_rgb(70,70,70), image_alpha)
		draw_sprite_ext(ds_list_find_value(skinparts, 2), 0, x + XGun*KillInfo_ScaleFixer, y + YKiller*KillInfo_ScaleFixer, wScale, wScale, KillInfo_PointingTo, c_white, image_alpha)
	}
}
Tank_Draw(x + XKilled*KillInfo_ScaleFixer, y + YKiller*KillInfo_ScaleFixer, KillInfo_TankScale * KillInfo_ScaleFixer, KillInfo_PointingTo, Tank2_PrimaryColor,
			Tank2_SecondaryColor, true, Tank2_SkinWheel,
			Tank2_SkinCartPrimary, Tank2_SkinCartSecondary, Tank2_SkinCartChasis,
			Tank2_SkinCartPainted, Tank2_SkinCartPaint, true, color1,
			Tank2_SkinCannonGlow, Tank2_SkinCannonPainted, Tank2_SkinCannonPaint,
			Tank2_SkinCannonChasis, Tank2_SkinCannonPrimary, Tank2_SkinCannonSecondary, KillInfo_PointingTo,
			Tank2_GunPrimaryColor, Tank2_GunSecondaryColor, false, true,
			(Tank2_ScopeID > -1), Tank2_SkinScopeChasis, Tank2_SkinScopePainted, Tank2_SkinScopeGlow, Tank2_SkinScopeColor)