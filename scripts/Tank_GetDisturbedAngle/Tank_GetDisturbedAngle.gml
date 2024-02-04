var movementFailureMultiplier = 3
if (Tank_WeaponSelected == 1) {
	var movementFailure = irandom(Tank_GunGetAngle(Tank_GunID) * 100) / 100
	movementFailureMultiplier = Tank_GunGetDispersion(Tank_GunID)
}
else {
	var movementFailure = irandom(Tank_GunGetAngle(Tank_GunID2))
	movementFailureMultiplier = Tank_GunGetDispersion(Tank_GunID2)
}
if (Tank_IsPointingDown == true || Tank_IsPointingUpp == true || Tank_IsPointingLeft == true || Tank_IsPointingRight == true ) movementFailure = movementFailure * movementFailureMultiplier
if (irandom(1) == 0) return Tank_PointingTo + movementFailure
else return Tank_PointingTo - movementFailure