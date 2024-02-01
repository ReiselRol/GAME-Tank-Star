if (Tank_MainCamera == true) {
	var hide = place_meeting(x, y, HitboxSuperUpperTile) || place_meeting(x, y, HitboxUpperTile)
	if (hide == false) {
		var me = id
		with (HitboxUpperTile) {
			if (collision_line(x, y, me.x, me.y, HitboxTile, false, true) == noone) {
				hide = true
				break;
			}
		}
	}
	layer_set_visible(layer_get_id("UpperShadows"), !hide)
	layer_set_visible(layer_get_id("UpperTiles"), !hide)
}