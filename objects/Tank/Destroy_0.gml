/// @description Drop Selected Weapon
if (Tank_Health <= 0) Tank_DropGun()
instance_destroy(Tank_WalkingHitbox)
Tank_FoundNextCamera()
Tank_UpdateInfo()
Tank_PutDeathTank()
Tank_DropSpike()