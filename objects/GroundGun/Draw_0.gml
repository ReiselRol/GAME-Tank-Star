/// @description Drawing the Gun
draw_sprite_ext(Gun_SkinCannonPrimary, 0, x, y, Gun_Scale, Gun_Scale, image_angle, Gun_PrimaryColor, 1)
draw_sprite_ext(Gun_SkinCannonSecondary, 0, x, y, Gun_Scale, Gun_Scale, image_angle, Gun_SecondaryColor, 1)
draw_sprite_ext(Gun_SkinCannonChasis, 0, x, y, Gun_Scale, Gun_Scale, image_angle, c_white, 1)
if (Gun_SkinCannonPaint != 0) draw_sprite_ext(Gun_SkinCannonPainted, 0, x, y, Gun_Scale, Gun_Scale, image_angle, Tank_GetPaintColor(Gun_SkinCannonPaint), 1)
