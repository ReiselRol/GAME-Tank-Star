var movementFailureMultiplier = 3
if (Tank_WeaponSelected == 1) {
	var movementFailure = irandom(Tank_GunGetAngle(Tank_GunID))
	movementFailureMultiplier = Tank_GunGetDispersion(Tank_GunID)
}
else {
	var movementFailure = irandom(Tank_GunGetAngle(Tank_GunID2))
	movementFailureMultiplier = Tank_GunGetDispersion(Tank_GunID2)
}
if (Tank_IsPointingDown || Tank_IsPointingUpp || Tank_IsPointingLeft || Tank_IsPointingRight) movementFailure *= movementFailureMultiplier
if (irandom(1) == 0) return Tank_PointingTo + movementFailure
else return Tank_PointingTo - movementFailure