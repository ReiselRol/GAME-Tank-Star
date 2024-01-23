if (Tank_GunCooldown <= 0) {
	if (Tank_WeaponSelected == 1) {
		var ammoCanReaload = Tank_GunGetAmmo(Tank_GunID)
		if (ammoCanReaload != Tank_GunAmmo) {
			var ammoThatNeed = ammoCanReaload - Tank_GunAmmo
			if (Tank_GunMaxAmmo >= ammoThatNeed) {
				Tank_GunAmmo += ammoThatNeed
				Tank_GunMaxAmmo -= ammoThatNeed
				Tank_GunCooldown = Tank_GunGetReloadTime(Tank_GunID)
				AudioPlaySound(Tank_GunGetReloadSound(Tank_GunID))
			} else {
				if (Tank_GunMaxAmmo != 0) {
					Tank_GunAmmo += Tank_GunMaxAmmo
					Tank_GunMaxAmmo = 0
					Tank_GunCooldown = Tank_GunGetReloadTime(Tank_GunID)
					AudioPlaySound(Tank_GunGetReloadSound(Tank_GunID))
				}
			}
		}
	} else {
		var ammoCanReaload = Tank_GunGetAmmo(Tank_GunID2)
		if (ammoCanReaload != Tank_GunAmmo2) {
			var ammoThatNeed = ammoCanReaload - Tank_GunAmmo2
			if (Tank_GunMaxAmmo2 >= ammoThatNeed) {
				Tank_GunAmmo2 += ammoThatNeed
				Tank_GunMaxAmmo2 -= ammoThatNeed
				Tank_GunCooldown = Tank_GunGetReloadTime(Tank_GunID2)
				AudioPlaySound(Tank_GunGetReloadSound(Tank_GunID2))
			} else {
				if (Tank_GunMaxAmmo2 != 0) {
					Tank_GunAmmo2 += Tank_GunMaxAmmo2
					Tank_GunMaxAmmo2 = 0
					Tank_GunCooldown = Tank_GunGetReloadTime(Tank_GunID2)
					AudioPlaySound(Tank_GunGetReloadSound(Tank_GunID2))
				}
			}
		}
	}
	
}