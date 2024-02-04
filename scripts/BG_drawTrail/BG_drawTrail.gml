var trailforce = argument[0]
var trailAlpha = 0.4
if (BG_TrailWaitForCount == 0) {
	if (BG_TrailOpacity < 1) BG_TrailOpacity += 0.2
} else BG_TrailWaitForCount --
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * (trailforce / 2) , image_yscale, image_angle, image_blend, trailAlpha * BG_TrailOpacity)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * trailforce, image_yscale, image_angle, image_blend, trailAlpha * BG_TrailOpacity)