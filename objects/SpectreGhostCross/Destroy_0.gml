/// @description The Explosion
AudioPlaySound(SpectreCrossExplosion)
if (instance_exists(SpectreGhostCross_TankID)) {
	var proj = id
	var me = SpectreGhostCross_TankID
	var allLocalizedTanks = ds_list_create()
	with (Tank) {
		if (id != me) {
			if (Tank_Team != me.Tank_Team) {
				if (collision_line(proj.x, proj.y, x, y, HitboxTile, false, true) == noone &&
					collision_line(proj.x, proj.y, x, y, HitboxTileNoShadows, false, true) == noone)
						ds_list_add(allLocalizedTanks, id)
			}
		}
	}
	var allTanksSize = ds_list_size(allLocalizedTanks)
	for (var tank = 0; tank < allTanksSize; tank++) {
		var thisTank = ds_list_find_value(allLocalizedTanks, tank)
		var SpectreCross = instance_create_layer(x, y, "ProjsLayer", SpectreProj)
		var angle = point_direction(SpectreCross.x, SpectreCross.y, thisTank.x, thisTank.y)
		SpectreCross.image_angle = angle
		SpectreCross.direction = angle
		SpectreCross.SpectreProj_Team = SpectreGhostCross_TankID.Tank_Team
		SpectreCross.SpectreProj_TankId = SpectreGhostCross_TankID
		with (SpectreGhostCross_TankID) AudioPlaySound( SpectreProjSpawn)
		Damagable_MakeDamagable(SpectreCross, SpectreProj.SpectreProj_Damage, SpectreGhostCross_TankID, SpectreProj.SpectreProj_Piercing, 10, [false])
	}
}