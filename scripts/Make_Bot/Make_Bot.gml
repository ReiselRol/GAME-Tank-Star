var X = argument[0]
var Y = argument[1]
var Team = argument [2]
var elo = argument[3]
var bottank = instance_create_layer(X, Y, "TankHitboxLayer", BotTank)
with (bottank) {
	randomise()
	if (global.BotsCustomized == false) {
		Tank_PrimaryColor = make_color_rgb(irandom(255), irandom(255), irandom(255))
		Tank_SecondaryColor = make_color_rgb(irandom(255), irandom(255), irandom(255))
		Tank_GunPrimaryColor = Tank_PrimaryColor
		Tank_GunSecondaryColor = Tank_SecondaryColor
		var Tank_Info = ds_list_find_value(global.Match_Players, Tank_PlayerID)
		Tank_Info[0] = Tank_PrimaryColor
		Tank_Info[1] = Tank_SecondaryColor
		Tank_Info[2] = Tank_GunPrimaryColor
		Tank_Info[3] = Tank_GunSecondaryColor
		ds_list_replace(global.Match_Players, Tank_PlayerID, Tank_Info)
	}
	Tank_Team = Team
	Skin_SetPrimarySkin(Tank_GunID, Tank_CannonSkin)
	Skin_SetSecondarySkin(Tank_GunID2, Tank_SecondaryColor)
	Tank_GunAutoReuse = Tank_GunGetAutoReuse(Tank_GunID)
	Tank_GunAmmo = Tank_GunGetAmmo(Tank_GunID)
	Tank_GunAmmo2 = Tank_GunGetAmmo(Tank_GunID2)
	Tank_GunMaxAmmo = Tank_GunGetMaxAmmo(Tank_GunID)
	Tank_GunMaxAmmo2 = Tank_GunGetMaxAmmo(Tank_GunID2)
	Tank_BotElo = elo
	Tank_WeaponSelected = 1
}
return bottank