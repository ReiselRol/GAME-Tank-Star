var savedTanksID = ds_list_create()
for (var cicle = 0; cicle < Match_TotalPlayersOnTeam * 2; cicle ++){
	var Tank_Info = ds_list_find_value(global.Match_Players, cicle)
	
	var Tank_PlayerId = Tank_Info[14]
	with (Tank) {
		if (Tank_PlayerID == Tank_PlayerId)	{
			ds_list_add(savedTanksID, Tank_PlayerID)
			Tank_Info[0] = Tank_PrimaryColor
			Tank_Info[1] = Tank_SecondaryColor
			Tank_Info[2] = Tank_GunPrimaryColor
			Tank_Info[3] = Tank_GunSecondaryColor
			Tank_Info[4] = Tank_GunPrimaryColor2
			Tank_Info[5] = Tank_GunSecondaryColor2
			Tank_Info[6] = Tank_GunID
			Tank_Info[7] = Tank_SkinCannonPaint
			Tank_Info[8] = Tank_CannonSkin
			Tank_Info[9] = Tank_GunID2
			Tank_Info[10] = Tank_SkinSecondaryCannonPaint
			Tank_Info[11] = Tank_CannonSecondarySkin
			Tank_Info[12] = Tank_Shield
			Tank_Info[13] = Tank_Name
			Tank_Info[15] = Tank_SkinCartPaint
			Tank_Info[16] = true
			break
		}
	}
	ds_list_replace(global.Match_Players, cicle, Tank_Info)
}