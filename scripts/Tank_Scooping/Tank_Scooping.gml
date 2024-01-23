var GunID = (Tank_WeaponSelected == 1) ? Tank_GunID : Tank_GunID2
if (Tank_IsScooping == true && Tank_GunCanScoope(GunID)) {
	Tank_MvSpeed *= 0.65
	if (Tank_WeaponSelected == 1 && Tank_GunID != -1) Tank_FixZoom(Tank_GunGetZoom(Tank_GunID))
	else if (Tank_WeaponSelected == 2 && Tank_GunID2 != -1) Tank_FixZoom(Tank_GunGetZoom(Tank_GunID2))
	else Tank_FixZoom(Camera_DefautZoom)
} else Tank_FixZoom(Camera_DefautZoom)