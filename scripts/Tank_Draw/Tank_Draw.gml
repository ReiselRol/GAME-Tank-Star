var X = argument[0]
var Y = argument[1]
var Tank_Scale = argument[2]
var Tank_Angle = argument[3]
var Tank_PrimaryColor = argument[4]
var Tank_SecondaryColor = argument[5]
var Tank_IsGlowActive = argument[6]
var Tank_SkinWheel = argument[7]
var Tank_SkinCartPrimary = argument[8]
var Tank_SkinCartSecondary = argument[9]
var Tank_SkinCartChasis = argument[10]
var Tank_SkinCartPainted = argument[11]
var Tank_SkinCartPaint = argument[12]
var Tank_SkinCartGlow = argument[13]
var Tank_GlowColor = argument[14]
var Tank_SkinCannonGlow = argument[15]
var Tank_SkinCannonPainted = argument[16]
var Tank_SkinCannonPaint = argument[17]
var Tank_SkinCannonChasis = argument[18]
var Tank_SkinCannonPrimary = argument[19]
var Tank_SkinCannonSecondary = argument[20]
var Tank_PointingTo = argument[21]
var GunPrimaryColor = argument[22]
var GunSecondaryColor = argument[23]
var NotMoving = argument[24]
var drawGun = argument[25]
var HaveScoope = argument[26]
var ScopeChasis = argument[27]
var ScopePainted = argument[28]
var ScopeGlow = argument[29]
var ScopeColor = argument[30]
var GunX = argument[31]
var GunY = argument[32]

var paintDamaged = (Tank_HittedTime > 0)

if (NotMoving == false) draw_sprite_ext(Tank_SkinWheel, image_index, X, Y, Tank_Scale, Tank_Scale, Tank_Angle, c_white, image_alpha)
else draw_sprite_ext(Tank_SkinWheel, 0, X, Y, Tank_Scale, Tank_Scale, Tank_Angle, c_white, image_alpha)
draw_sprite_ext(Tank_SkinCartPrimary, image_index, X, Y, Tank_Scale, Tank_Scale, Tank_Angle, Tank_PrimaryColor, image_alpha)
draw_sprite_ext(Tank_SkinCartSecondary, image_index, X, Y, Tank_Scale, Tank_Scale, Tank_Angle, Tank_SecondaryColor, image_alpha)
if (paintDamaged == true) {
	draw_sprite_ext(Tank_SkinCartPrimary, image_index, X, Y, Tank_Scale, Tank_Scale, Tank_Angle, c_red, Tank_HittedTime)
	draw_sprite_ext(Tank_SkinCartSecondary, image_index, X, Y, Tank_Scale, Tank_Scale, Tank_Angle, c_red, Tank_HittedTime)
}
draw_sprite_ext(Tank_SkinCartChasis, image_index, X, Y, Tank_Scale, Tank_Scale, Tank_Angle, c_white, 1)
if (Tank_SkinCartPaint != 0) draw_sprite_ext(Tank_SkinCartPainted, image_index, X, Y, Tank_Scale, Tank_Scale, Tank_Angle, Tank_GetPaintColor(Tank_SkinCartPaint), image_alpha)
if (Tank_IsGlowActive == true) draw_sprite_ext(Tank_SkinCartGlow, image_index, X, Y, Tank_Scale, Tank_Scale, Tank_Angle, Tank_GlowColor, image_alpha)

if (drawGun == true) {
	draw_sprite_ext(Tank_SkinCannonPrimary, image_index, GunX, GunY, Tank_Scale, Tank_Scale, Tank_PointingTo, GunPrimaryColor, image_alpha)
	draw_sprite_ext(Tank_SkinCannonSecondary, image_index, GunX, GunY, Tank_Scale, Tank_Scale, Tank_PointingTo, GunSecondaryColor, image_alpha)
	if (paintDamaged == true) {
		draw_sprite_ext(Tank_SkinCannonPrimary, image_index, GunX, GunY, Tank_Scale, Tank_Scale, Tank_PointingTo, c_red, Tank_HittedTime)
		draw_sprite_ext(Tank_SkinCannonSecondary, image_index, GunX, GunY, Tank_Scale, Tank_Scale, Tank_PointingTo, c_red, Tank_HittedTime)
	}
	draw_sprite_ext(Tank_SkinCannonChasis, image_index, GunX, GunY, Tank_Scale, Tank_Scale, Tank_PointingTo, c_white, image_alpha)
	if (Tank_SkinCannonPaint != 0) draw_sprite_ext(Tank_SkinCannonPainted, image_index, GunX, GunY, Tank_Scale, Tank_Scale, Tank_PointingTo, Tank_GetPaintColor(Tank_SkinCannonPaint), image_alpha)
	if (Tank_IsGlowActive == true) draw_sprite_ext(Tank_SkinCannonGlow, image_index, GunX, GunY, Tank_Scale, Tank_Scale, Tank_PointingTo, Tank_GlowColor, image_alpha)
	if (HaveScoope == true) {
		draw_sprite_ext(ScopeColor, image_index, GunX, GunY, Tank_Scale, Tank_Scale, Tank_PointingTo, GunSecondaryColor, image_alpha)
		if (paintDamaged == true) draw_sprite_ext(ScopeColor, image_index, GunX, GunY, Tank_Scale, Tank_Scale, Tank_PointingTo, c_red, Tank_HittedTime)
		draw_sprite_ext(ScopeChasis, image_index, GunX, GunY, Tank_Scale, Tank_Scale, Tank_PointingTo, c_white, image_alpha)
		if (Tank_SkinCannonPaint != 0) draw_sprite_ext(ScopePainted, image_index, GunX, GunY, Tank_Scale, Tank_Scale, Tank_PointingTo, Tank_GetPaintColor(Tank_SkinCannonPaint), image_alpha)
		//if (Tank_IsGlowActive == true) draw_sprite_ext(ScopeGlow, image_index, X, Y, Tank_Scale, Tank_Scale, Tank_PointingTo, Tank_GlowColor, image_alpha)
	}
}