/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (Smoke_Direction == 90) {
	if (Smoke_SettedFixer == false) {
		Smoke_ScaleY = -0.1
		Smoke_SettedFixer = true
	}
	image_yscale = Smoke_ScaleY
	if (-Smoke_MaxScale < Smoke_ScaleY && place_meeting(x, y, HitboxTile) == false && place_meeting(x, y, HitboxTileNoShadows) == false) Smoke_ScaleY -= 0.25
} else if (Smoke_Direction == 270) {
	if (Smoke_SettedFixer == false) {
		Smoke_ScaleY = 0.1
		Smoke_SettedFixer = true
	}
	image_yscale = Smoke_ScaleY
	if (Smoke_MaxScale > Smoke_ScaleY && place_meeting(x, y, HitboxTile) == false && place_meeting(x, y, HitboxTileNoShadows) == false) Smoke_ScaleY += 0.25
} else if (Smoke_Direction == 0 || Smoke_Direction == 360) {
	if (Smoke_SettedFixer == false) {
		Smoke_ScaleX = 0.1
		Smoke_SettedFixer = true
	}
	image_xscale = Smoke_ScaleX
	if (Smoke_MaxScale > Smoke_ScaleX && place_meeting(x, y, HitboxTile) == false && place_meeting(x, y, HitboxTileNoShadows) == false) Smoke_ScaleX += 0.25
} else if (Smoke_Direction == 180) {
	if (Smoke_SettedFixer == false) {
		Smoke_ScaleX = -0.1
		Smoke_SettedFixer = true
	}
	image_xscale = Smoke_ScaleX
	if (-Smoke_MaxScale < Smoke_ScaleX && place_meeting(x, y, HitboxTile) == false && place_meeting(x, y, HitboxTileNoShadows) == false) Smoke_ScaleX -= 0.25
}
