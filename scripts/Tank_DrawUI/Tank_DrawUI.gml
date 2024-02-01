if (Camera_Main == true) {
	if (instance_exists(Camera_From)) {
		var scaleFix = Camera_From.Camera_Zoom / Camera_From.Camera_DefautZoom
		var cameraWIdth = camera_get_view_width(view_camera[0])
		var cameraHeight = camera_get_view_height(view_camera[0])
		var X = cameraWIdth * 0.86
		var XW = cameraWIdth * 0.92
		var Y = cameraHeight * 0.72
		var YW = cameraHeight * 0.77
		var Y2 = cameraHeight * 0.84
		var Y2W = cameraHeight * 0.89
		var wScale = 2.3 * scaleFix
		var Scale = 0.28 * scaleFix
		var colorActived = (Camera_From.Tank_WeaponSelected == 1) ? 0.6 : 0.2
		var colorActived2 = (Camera_From.Tank_WeaponSelected == 2) ? 0.6 : 0.2
		draw_sprite_ext(WeaponUI, 0, x + X, y + Y, Scale / 1.8, Scale, 0, c_black, colorActived)
		draw_sprite_ext(WeaponUI, 0, x + X, y + Y2, Scale / 1.8, Scale, 0, c_black, colorActived2)
		draw_sprite_ext(WeaponUI, 1, x + X, y + Y, Scale / 1.8, Scale, 0, c_white, colorActived)
		draw_sprite_ext(WeaponUI, 1, x + X, y + Y2, Scale / 1.8, Scale, 0, c_white, colorActived2)
		if (Camera_From.Tank_GunID != -1) {
		var skinparts = Skin_GunGetSkin(Camera_From.Tank_GunID, 0)
			draw_sprite_ext(ds_list_find_value(skinparts, 4), 0, x + XW, y + YW,wScale, wScale, 0, make_color_rgb(100,100,100), colorActived * 2)
			draw_sprite_ext(ds_list_find_value(skinparts, 3), 0, x + XW, y + YW, wScale, wScale, 0, make_color_rgb(70,70,70), colorActived * 2)
			draw_sprite_ext(ds_list_find_value(skinparts, 2), 0, x + XW, y + YW, wScale, wScale, 0, c_white, colorActived * 2)
		}
		if (Camera_From.Tank_GunID2 != -1) {
			var skinparts2 = Skin_GunGetSkin(Camera_From.Tank_GunID2, 0)
			draw_sprite_ext(ds_list_find_value(skinparts2, 4), 0, x + XW, y + Y2W, wScale, wScale, 0, make_color_rgb(100,100,100), colorActived2 * 2)
			draw_sprite_ext(ds_list_find_value(skinparts2, 3), 0, x + XW, y + Y2W, wScale, wScale, 0, make_color_rgb(70,70,70), colorActived2 * 2)
			draw_sprite_ext(ds_list_find_value(skinparts2, 2), 0, x + XW, y + Y2W, wScale, wScale, 0, c_white, colorActived2 * 2)
		}
		var ammoColor = c_gray
		var actualAmmo = 0
		var actualMaxAmo = 0
		var cooldown = Camera_From.Tank_GunCooldown
		if (Camera_From.Tank_WeaponSelected == 1 && Camera_From.Tank_GunID != -1) {
			actualAmmo = Camera_From.Tank_GunAmmo
			actualMaxAmo = Camera_From.Tank_GunMaxAmmo
			var ammo = Tank_GunGetAmmo(Camera_From.Tank_GunID) 
			if (Camera_From.Tank_GunAmmo == ammo ) ammoColor = c_yellow
			else if (Camera_From.Tank_GunAmmo <= ammo/2 ) ammoColor = c_red
			else ammoColor = c_lime
		} else if (Camera_From.Tank_WeaponSelected == 2 && Camera_From.Tank_GunID2 != -1) {
			actualAmmo = Camera_From.Tank_GunAmmo2
			actualMaxAmo = Camera_From.Tank_GunMaxAmmo2
			var ammo = Tank_GunGetAmmo(Camera_From.Tank_GunID2)
			if (Camera_From.Tank_GunAmmo2 == ammo) ammoColor = c_yellow
			else if (Camera_From.Tank_GunAmmo2 <= ammo/2) ammoColor = c_red
			else ammoColor = c_lime
		}
		draw_sprite_ext(InfoUI, 3, x + cameraWIdth * 0.6, y + cameraHeight * 0.88, Scale, Scale, 0, ammoColor, 0.45)
		if (cooldown > 0) draw_sprite_ext(InfoUI, 3, x + cameraWIdth * 0.6, y + cameraHeight * 0.88, Scale, Scale, 0, c_gray, 0.65)
		draw_sprite_ext(InfoUI, 1, x + cameraWIdth * 0.6, y + cameraHeight * 0.88, Scale, Scale, 0, c_white, 0.6)
		draw_set_font(AmmoFont)
		draw_text(x + cameraWIdth * 0.66, y + cameraHeight * 0.9, string(actualAmmo) + " / " + string(actualMaxAmo))
		draw_sprite_ext(InfoUI, 2, x + cameraWIdth * 0.6, y + cameraHeight * 0.88, Scale, Scale, 0, c_white, 0.6)
		
		
		var lifeColor = (Camera_From.Tank_Health > 50) ? c_lime : c_red
		draw_sprite_ext(InfoUI, 3, x + cameraWIdth * 0.4, y + cameraHeight * 0.88, -Scale, Scale, 0, lifeColor, 0.45)
		draw_sprite_ext(InfoUI, 1, x + cameraWIdth * 0.4, y + cameraHeight * 0.88, -Scale, Scale, 0, c_white, 0.6)
		draw_text(x + cameraWIdth * 0.26, y + cameraHeight * 0.9, Camera_From.Tank_Health)
		if (Camera_From.Tank_Shield > 0) {
			var shieldColor = (Camera_From.Tank_Shield >= 25) ? c_white : c_red
			draw_set_color(shieldColor)
			draw_text(x + cameraWIdth * 0.2, y + cameraHeight * 0.9, Camera_From.Tank_Shield)
			draw_set_color(c_white)
		}
		draw_set_font(DefaultFont)
		var blueTeam = 0
		var redTeam = 0
		var infoUIX = cameraWIdth / 2 + camera_get_view_x(view_camera[0])
		var infoUIY = camera_get_view_y(view_camera[0]) + 30 * scaleFix
		var InfoXscale = 0.65 * scaleFix
		var InfoYscale = 0.25 * scaleFix
		var InfoAlpha = 0.5
		var InfoTankDistance = 50 * scaleFix
		var InfoTankMargin = 100 * scaleFix
		var InfoTankScale = 0.75 * scaleFix
		var InfoTankAlpha = 1
		draw_sprite_ext(TimebarSprite, 1, infoUIX, infoUIY, InfoXscale, InfoYscale, 0, c_aqua, InfoAlpha)
		draw_sprite_ext(TimebarSprite, 2, infoUIX, infoUIY, InfoXscale, InfoYscale, 0, c_red, InfoAlpha)
		draw_sprite_ext(TimebarSprite, 0, infoUIX, infoUIY, InfoXscale, InfoYscale, 0, c_white, 1)
		with (Tank) {
			if (Tank_Team == 0) {
				blueTeam ++
				var tankXPos = infoUIX - (InfoTankMargin + InfoTankDistance * blueTeam)
				draw_sprite_ext(Tank_SkinWheel, 0, tankXPos, infoUIY, InfoTankScale, InfoTankScale, 0, c_white, InfoTankAlpha)
				draw_sprite_ext(Tank_SkinCartPrimary, 0, tankXPos, infoUIY, InfoTankScale, InfoTankScale, 0, Tank_PrimaryColor, InfoTankAlpha)
				draw_sprite_ext(Tank_SkinCartSecondary, 0, tankXPos, infoUIY, InfoTankScale, InfoTankScale, 0, Tank_SecondaryColor, InfoTankAlpha)
				draw_sprite_ext(Tank_SkinCartChasis, 0, tankXPos, infoUIY, InfoTankScale, InfoTankScale, 0, c_white, InfoTankAlpha)
			} else {
				redTeam ++
				var tankXPos = infoUIX + (InfoTankMargin + InfoTankDistance * redTeam)
				draw_sprite_ext(Tank_SkinWheel, 0, tankXPos, infoUIY, InfoTankScale, InfoTankScale, 180, c_white, InfoTankAlpha)
				draw_sprite_ext(Tank_SkinCartPrimary, 0, tankXPos, infoUIY, InfoTankScale, InfoTankScale, 180, Tank_PrimaryColor, InfoTankAlpha)
				draw_sprite_ext(Tank_SkinCartSecondary, 0, tankXPos, infoUIY, InfoTankScale, InfoTankScale, 180, Tank_SecondaryColor, InfoTankAlpha)
				draw_sprite_ext(Tank_SkinCartChasis, 0, tankXPos, infoUIY, InfoTankScale, InfoTankScale, 180, c_white, InfoTankAlpha)
			}
		}
	}
}