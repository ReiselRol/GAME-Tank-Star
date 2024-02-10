/// @description Drawing Tank
draw_sprite_ext(Tank_WheelsSkin, 0, x, y, Tank_Scale, Tank_Scale, Tank_Angle, c_white, image_alpha)
draw_sprite_ext(Tank_SkinCartPrimary, 0, x, y, Tank_Scale, Tank_Scale, Tank_Angle, Tank_PrimaryColor, image_alpha)
draw_sprite_ext(Tank_SkinCartSecondary, 0, x, y, Tank_Scale, Tank_Scale, Tank_Angle, Tank_SecondaryColor, image_alpha)
draw_sprite_ext(Tank_SkinCartChasis, 0, x, y, Tank_Scale, Tank_Scale, Tank_Angle, c_white, image_alpha)
if (Tank_SkinCartPaint > 0) draw_sprite_ext(Tank_SkinCartPainted, 0, x, y, Tank_Scale, Tank_Scale, Tank_Angle, Tank_GetPaintColor(Tank_SkinCartPaint), image_alpha)
draw_sprite_ext(Tank_SkinCartGlow, 0, x, y, Tank_Scale, Tank_Scale, Tank_Angle, c_silver, 0.8)