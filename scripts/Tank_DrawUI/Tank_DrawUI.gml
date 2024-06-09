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
			if (Camera_From.Tank_ScopeID > -1) {
				var xDiferent = cameraWIdth * 0.045
				var yDiferent = cameraHeight * 0.007
				var scopeParts = Skin_GetScopeSkin(Camera_From.Tank_ScopeID)
				draw_sprite_ext(ds_list_find_value(scopeParts, 1), 0, x + XW - xDiferent, y + YW + yDiferent,wScale, wScale, 90, make_color_rgb(70,70,70), colorActived * 2)
				draw_sprite_ext(ds_list_find_value(scopeParts, 0), 0, x + XW - xDiferent, y + YW + yDiferent, wScale, wScale, 90, c_white, colorActived * 2)
			}
		}
		if (Camera_From.Tank_GunID2 != -1) {
			var skinparts2 = Skin_GunGetSkin(Camera_From.Tank_GunID2, 0)
			draw_sprite_ext(ds_list_find_value(skinparts2, 4), 0, x + XW, y + Y2W, wScale, wScale, 0, make_color_rgb(100,100,100), colorActived2 * 2)
			draw_sprite_ext(ds_list_find_value(skinparts2, 3), 0, x + XW, y + Y2W, wScale, wScale, 0, make_color_rgb(70,70,70), colorActived2 * 2)
			draw_sprite_ext(ds_list_find_value(skinparts2, 2), 0, x + XW, y + Y2W, wScale, wScale, 0, c_white, colorActived2 * 2)
			if (Camera_From.Tank_ScopeID2 > -1) {
				var xDiferent = cameraWIdth * 0.045
				var yDiferent = cameraHeight * 0.007
				var scopeParts = Skin_GetScopeSkin(Camera_From.Tank_ScopeID2)
				draw_sprite_ext(ds_list_find_value(scopeParts, 1), 0, x + XW - xDiferent, y + Y2W + yDiferent, wScale, wScale, 90, make_color_rgb(70,70,70), colorActived2 * 2)
				draw_sprite_ext(ds_list_find_value(scopeParts, 0), 0, x + XW - xDiferent, y + Y2W + yDiferent, wScale, wScale, 90, c_white, colorActived2 * 2)
			}
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
		var LifeUIX = cameraWIdth * 0.38
		var AmmoUIX = cameraWIdth * 0.616
		draw_sprite_ext(InfoUI, 3, x + AmmoUIX, y + cameraHeight * 0.88, Scale, Scale, 0, ammoColor, 0.45)
		if (cooldown > 0) draw_sprite_ext(InfoUI, 3, x + AmmoUIX, y + cameraHeight * 0.88, Scale, Scale, 0, c_gray, 0.65)
		draw_sprite_ext(InfoUI, 1, x + AmmoUIX, y + cameraHeight * 0.88, Scale, Scale, 0, c_white, 0.6)
		draw_set_font(AmmoFont)
		draw_text_ext_transformed(x + AmmoUIX + cameraWIdth * 0.06, y + cameraHeight * 0.9, string(actualAmmo) + " / " + string(actualMaxAmo), 10, 7000, scaleFix, scaleFix, 0)
		draw_sprite_ext(InfoUI, 2, x + AmmoUIX, y + cameraHeight * 0.88, Scale, Scale, 0, c_white, 0.6)
		if (Camera_From.Tank_AgentUI != noone) {
			var HabilitiesInitialX = 0.39
			var habilitiessHeight = cameraHeight * 0.88
			var habilitiesScale = 0.9 * scaleFix
			var HabilityReaminingsSeparation = sprite_get_width(Camera_From.Tank_AgentUI) * habilitiesScale
			var separation = 0.055
			var HabilitiesExtraHeight = 1
			var HabilitiesAlpha = 0.75
			for (var i = 0; i < 4; i++) {
				draw_sprite_ext(AgentUIBuildHelp, 0, x + (HabilitiesInitialX + separation * i) * cameraWIdth, y + habilitiessHeight, habilitiesScale, habilitiesScale, 0, c_white, HabilitiesAlpha)
				draw_sprite_ext(Camera_From.Tank_AgentUI, i, x + (HabilitiesInitialX + separation * i) * cameraWIdth, y + habilitiessHeight, habilitiesScale, habilitiesScale, 0, c_white, HabilitiesAlpha)
				if (Camera_From.Tank_HabilitiesSelected[i] == true) draw_sprite_ext(AgentUIBuildHelp, 1, x + (HabilitiesInitialX + separation * i) * cameraWIdth, y + habilitiessHeight, habilitiesScale, habilitiesScale, 0, c_white, HabilitiesAlpha)
				if (i != 2) {
					var habilitiesRemaining = (i < 2) ? ((i == 0) ? Camera_From.Tank_CHability : Camera_From.Tank_QHability) : Camera_From.Tank_KHability
					var maxHabilitiesRemaining = (i < 2) ? ((i == 0) ? Camera_From.Tank_MaxCHability : Camera_From.Tank_MaxQHability) : Camera_From.Tank_MaxKHability
					for (var j = 0; j < maxHabilitiesRemaining; j++){
						if (j + 1 <= habilitiesRemaining && habilitiesRemaining != 0) draw_sprite_ext(AgentUIBuildHelp, 2, x + HabilityReaminingsSeparation / maxHabilitiesRemaining * j + (HabilitiesInitialX + separation * i) * cameraWIdth, y + habilitiessHeight, habilitiesScale / maxHabilitiesRemaining, habilitiesScale * HabilitiesExtraHeight, 0, c_white, HabilitiesAlpha)
						else draw_sprite_ext(AgentUIBuildHelp, 3, x + HabilityReaminingsSeparation / maxHabilitiesRemaining * j + (HabilitiesInitialX + separation * i) * cameraWIdth, y + habilitiessHeight, habilitiesScale / maxHabilitiesRemaining, habilitiesScale * HabilitiesExtraHeight, 0, c_white, HabilitiesAlpha)
					}
				}
			}
		}
		
		var lifeColor = (Camera_From.Tank_Health > 50) ? c_lime : c_red
		if (Camera_From.Tank_Health == Camera_From.Tank_MaxHealth && Camera_From.Tank_Shield > 0) lifeColor = c_aqua
		draw_sprite_ext(InfoUI, 3, x + LifeUIX, y + cameraHeight * 0.88, -Scale, Scale, 0, lifeColor, 0.45)
		draw_sprite_ext(InfoUI, 1, x + LifeUIX, y + cameraHeight * 0.88, -Scale, Scale, 0, c_white, 0.6)
		draw_text_ext_transformed(x +LifeUIX - cameraWIdth * 0.14, y + cameraHeight * 0.9, Camera_From.Tank_Health, 10, 7000, scaleFix, scaleFix, 0)
		if (Camera_From.Tank_Shield > 0) {
			var shieldColor = (Camera_From.Tank_Shield >= 25) ? c_white : c_red
			draw_set_color(shieldColor)
			draw_text_ext_transformed(x + cameraWIdth * 0.2, y + cameraHeight * 0.9, Camera_From.Tank_Shield, 10, 7000, scaleFix, scaleFix, 0)
			draw_set_color(c_white)
		}
		if (variable_instance_exists(Match, "Match_Minimap")) {
			var MapScale = 0.04
			var XMap = cameraWIdth * 0.02
			var PinScale = 1
			var YMap = cameraHeight * 0.15
			var MapAlpha = 0.6
			var T = Camera_From.Tank_Team
			var TID = Camera_From
			var spikeSize = 0.15
			var spikeSeparation = 80
			var PinColor = (Camera_From.Tank_Team == 0) ? c_aqua : c_red
			draw_surface_ext(Match.Match_Minimap, x + XMap, y + YMap, scaleFix * MapScale, scaleFix * MapScale, 0, c_white, MapAlpha)
			var ID = id
			with (TankDeath) {
				if (Tank_Team == T) draw_sprite_ext(TankDeathPinSprite, 0, ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, (PinScale + 0.25) * scaleFix, (PinScale + 0.25) * scaleFix, 0, PinColor, 1)
			}
			with (Smoke) {
				if (Smoke_Team = T) {
					draw_sprite_ext(sprite_index, 0, ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, image_xscale * scaleFix * MapScale, image_yscale * scaleFix * MapScale, 0, c_white, 0.5)
					draw_sprite_ext(StormSmokeSprite, 0, ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, image_xscale * scaleFix * MapScale, image_yscale * scaleFix * MapScale, 0, c_white, 1)
				}
			}
			with (MarkedTank) {
				if (instance_exists(Mark_TankMarked)) {
					with (Mark_TankMarked) {
						if (Tank_Team != T) draw_sprite_ext(TankPinSprite, 0, ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, PinScale * scaleFix, PinScale * scaleFix, 0, (PinColor == c_aqua) ? c_red : c_aqua, 1)
					}
				}
			}
			with (SpectreEye) {
				if (SpectreEye_Team == T) draw_sprite_ext(SpectreEyeSprite, 0, ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, image_xscale * scaleFix * MapScale * 4, image_yscale * scaleFix * MapScale * 4, image_angle, c_white, 1)
			}
			with (SpectreGhostCross) {
				if (SpectreGhostCross_Team == T) draw_sprite_ext(SpectreGhostCrossSprite, 0, ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, image_xscale * scaleFix * MapScale * 3, image_yscale * scaleFix * MapScale * 3, image_angle, c_white, 1)
			}
			with (SpectreProj) {
				if (SpectreProj_Team == T) draw_sprite_ext(SpectreProjSprite, 0, ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, image_xscale * scaleFix * MapScale * 2.5, image_yscale * scaleFix * MapScale * 2.5, image_angle, c_white, 1)
			}
			with (Cable) {
				if (Cable_Master == true) {
					if (instance_exists(Cable_TankID)) {
						if (Cable_TankID.Tank_Team == T) {
							if (instance_exists(Cable_Brother)) {
								if (Cable_Brother.Cable_Stopped == true) {
									var Cx = 0
									var Cy = 0
									with (Cable_Brother) {
										Cx = x
										Cy = y
									}
									draw_set_color(PinColor)
									draw_set_alpha(0.5)
									draw_line(ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, ID.x + XMap + Cx * MapScale * scaleFix, ID.y + YMap + Cy * MapScale * scaleFix)
									draw_set_alpha(1)
									draw_set_color(c_white)
								}
							}
							draw_sprite_ext(sprite_index, 0, ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, 0.3 * scaleFix, 0.3 * scaleFix, image_angle, c_white, 1)
							if (instance_exists(Cable_Brother)) {
								with(Cable_Brother) draw_sprite_ext(sprite_index, 0, ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, 0.3 * scaleFix, 0.3 * scaleFix, image_angle, c_white, 1)
							}
						}
					}
				}
			}
			with (Tank) {
				if (Tank_Team == T) {
					draw_sprite_ext(TankPinSprite, 0, ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, PinScale * scaleFix, PinScale * scaleFix, 0, (TID != id) ? PinColor : c_yellow, 1)
					if (Tank_Attacker == true && Tank_HasTheSpike == true) draw_sprite_ext(SpikeSprite, 0, ID.x + XMap + (x + spikeSeparation) * MapScale * scaleFix, ID.y + YMap + (y + spikeSeparation) * MapScale * scaleFix, PinScale * scaleFix * spikeSize, PinScale * scaleFix * spikeSize, 0, c_white, 1)
					if (Tank_IsABot == true) {
						if (Tank_BotEnemie != noone) {
							for (var i = 0; i < ds_list_size(Tank_BotLisEnemies); i++) {
								var TankEnemie = ds_list_find_value(Tank_BotLisEnemies, i) 
								if (instance_exists(TankEnemie))draw_sprite_ext(TankPinSprite, 0, ID.x + XMap + TankEnemie.x * MapScale * scaleFix, ID.y + YMap + TankEnemie.y * MapScale * scaleFix, PinScale * scaleFix, PinScale * scaleFix, 0, (PinColor == c_aqua) ? c_red : c_aqua, 1)
							}
						}
					} else {
						with (Tank) {
							if (place_meeting(x, y, ID) && id != TID && Tank_Team != T) {
								if (collision_line(id.x, id.y, TID.x, TID.y, HitboxTile, false, true) == noone && collision_line(id.x, id.y, TID.x, TID.y, Smoke, false, true) == noone) draw_sprite_ext(TankPinSprite, 0, ID.x + XMap + x * MapScale * scaleFix, ID.y + YMap + y * MapScale * scaleFix, PinScale * scaleFix, PinScale * scaleFix, 0, (PinColor == c_aqua) ? c_red : c_aqua, 1)
							}
						}
					}
				}
			}
			if (TID.Tank_Attacker == true) {
				with (Spike) {
					draw_sprite_ext(SpikeSprite, 0, ID.x + XMap + (x) * MapScale * scaleFix, ID.y + YMap + (y) * MapScale * scaleFix, PinScale * scaleFix * spikeSize, PinScale * scaleFix * spikeSize, 0, Spike_Color, 1)
					draw_sprite_ext(SpikeSprite, 0, ID.x + XMap + (x) * MapScale * scaleFix, ID.y + YMap + (y) * MapScale * scaleFix, PinScale * scaleFix * spikeSize, PinScale * scaleFix * spikeSize, 0, c_white, 1)
				}
			}
		}
		
		draw_set_font(DefaultFont)
		var blueTeam = 0
		var redTeam = 0
		var infoUIX = cameraWIdth / 2 + camera_get_view_x(view_camera[0])
		var infoUIY = camera_get_view_y(view_camera[0]) + 30 * scaleFix
		var InfoTankRelativeScale = 5 / Match.Match_TotalPlayersOnTeam
		var InfoXscale = 0.65 * scaleFix
		var InfoYscale = 0.25 * scaleFix
		var InfoAlpha = 0.5
		var InfoTankDistance = 50 * scaleFix * InfoTankRelativeScale
		var InfoTankMargin = 100 * scaleFix
		var InfoTankScale = 0.75 * scaleFix * InfoTankRelativeScale
		var InfoTankAlpha = 1
		var timeDrawed = false
		draw_sprite_ext(TimebarSprite, 1, infoUIX, infoUIY, InfoXscale, InfoYscale, 0, c_aqua, InfoAlpha)
		draw_sprite_ext(TimebarSprite, 2, infoUIX, infoUIY, InfoXscale, InfoYscale, 0, c_red, InfoAlpha)
		draw_sprite_ext(TimebarSprite, 0, infoUIX, infoUIY, InfoXscale, InfoYscale, 0, c_white, 1)
		if (instance_exists(Spike)) {
			if (Spike.Spike_isPlanted) {
				if (Spike.Spike_isDefused) draw_sprite_ext(SpikeSprite, 1, infoUIX, infoUIY, InfoXscale, InfoXscale, 0, c_black, 1)
				else draw_sprite_ext(SpikeSprite, 1, infoUIX, infoUIY, InfoXscale, InfoXscale, 0, c_white, 1)
			} else {
				if (instance_exists(Match)) {
					draw_set_color(c_black)
					draw_text_ext_transformed(infoUIX - cameraWIdth * 0.01, infoUIY - cameraHeight * 0.01, G_GetTime(Match.Match_time), 10, 7000, scaleFix, scaleFix, 0)
					draw_set_color(c_white)
				}	
			}
		} else {
			if (instance_exists(Match)) {
				draw_set_color(c_black)
				draw_text_ext_transformed(infoUIX - cameraWIdth * 0.01, infoUIY - cameraHeight * 0.01, G_GetTime(Match.Match_time), 10, 7000, scaleFix, scaleFix, 0)
				draw_set_color(c_white)
			}
		}
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
		draw_text_ext_transformed(infoUIX - cameraWIdth * 0.35, infoUIY - cameraHeight * 0.01, global.Wins[0], 10, 7000, scaleFix, scaleFix, 0)
		draw_text_ext_transformed(infoUIX + cameraWIdth * 0.35, infoUIY - cameraHeight * 0.01, global.Wins[1], 10, 7000, scaleFix, scaleFix, 0)
		
		if (instance_exists(Match)) {
			if (Match.Match_finished == true) {
				if (Match.Match_isAce == false) {
					draw_sprite_ext(WinnerUISprite, 0, infoUIX, infoUIY, InfoXscale, InfoYscale * 2, 0,(Match.Match_winner == 0) ? c_green : c_red, 1)
					var WinUIText = (Match.Match_winner == 0) ? "Victory" : "Failure"
					draw_text_ext_transformed(infoUIX - cameraWIdth * 0.08, infoUIY + cameraHeight * 0.105, WinUIText , 10, 7000, scaleFix * 3.5, scaleFix * 3.5, 0)
				} else {
					draw_sprite_ext(WinnerUISprite, 0, infoUIX, infoUIY, InfoXscale, InfoYscale * 2, 0,c_yellow, 1)
					var WinUIText = "  Ace  "
					draw_text_ext_transformed(infoUIX - cameraWIdth * 0.08, infoUIY + cameraHeight * 0.105, WinUIText , 10, 7000, scaleFix * 3.5, scaleFix * 3.5, 0)
				}
			}
		}
		
		
		var barsSize = ds_list_size(Camera_From.Tank_Bars)
		var barX = cameraWIdth * 0.15
		var barY = cameraHeight * 0.85
		for (var i = 0; i < barsSize; i++) {
			var bar = ds_list_find_value(Camera_From.Tank_Bars, i)
			var progresion = bar[1]
			var total = bar [2]
			var barProgressionSize = progresion / total
			var barSize = 1
			var actualY = barY - cameraHeight * 0.07 * i
			draw_sprite_ext(LoadingBarSprite, 0, x + barX, y + actualY, barSize * scaleFix, barSize * scaleFix, 0, c_white, 1)
			draw_sprite_ext(LoadingBarSprite, bar[3], x + barX, y + actualY, barSize * scaleFix * barProgressionSize, barSize * scaleFix, 0, c_white, 1)
			draw_text_ext_transformed(x+ cameraWIdth * 0.45,y + actualY - cameraHeight * 0.05, bar[0], 10, 7000, scaleFix, scaleFix, 0)
		}
	}
}