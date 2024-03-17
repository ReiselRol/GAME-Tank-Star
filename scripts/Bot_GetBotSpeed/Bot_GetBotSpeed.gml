if (Tank_IsBombKeyPressed == true) return 0
var theSpeed = Tank_MvSpeed
var GunID = (Tank_WeaponSelected == 1) ? Tank_GunID : Tank_GunID2
if (Tank_IsScooping == true && Tank_GunCanScoope(GunID)) {
	theSpeed *= 0.6
}
if (Tank_SlowDebuffTime > 0) theSpeed *= 0.4
return theSpeed