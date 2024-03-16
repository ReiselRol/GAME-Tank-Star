if (Agent_Tank.Tank_QHability > 0 && Agent_isTping == false && Match.Match_ShopTime == false) {
	if (Agent_Tank.Tank_QKeyPressed == true) {
		if (Agent_TpSelected == true) Agent_TpSelected = false
		else {
			Agent_TpSelected = true	
			Agent_GonnaThrowGhostCross = false
		}
	}
	if (Agent_TpSelected == true) {
		Agent_Tank.Tank_DrawPreShoot = false
		x = mouse_x
		Agent_Tank.Tank_GunCooldown = 10
		y = mouse_y
		Agent_canTp = (collision_line(Agent_Tank.x, Agent_Tank.y, mouse_x, mouse_y, HitboxTile, false, true) != noone && place_meeting(x, y, HitboxTile) == false && place_meeting(x, y, HitboxTileNoShadows) == false)
		if (Agent_Tank.Tank_IsShootTapping == true) {
			Agent_TpSelected = false
			if (Agent_canTp == true) {
				Agent_Tank.Tank_IsShootTapping = false
				Agent_Tank.Tank_IsShooting = false
				Agent_TpX = mouse_x
				Agent_TpY = mouse_y
				with(Agent_Tank) {
					AudioPlaySound(SpectralTP)
					x = mouse_x
					y = mouse_y
					AudioPlaySound(SpectralTP)
				}
				instance_create_layer(Agent_Tank.x, Agent_Tank.y, "ProjsLayer", SpectreTPParticle)
				Agent_isTping = true
				Agent_TpWait = Agent_TpMaxWait
			}
		}
	} else if (Agent_GonnaThrowGhostCross == false) Agent_Tank.Tank_DrawPreShoot = true
}
if (Agent_isTping == true) {
	if (Agent_TpWait > 0) Agent_TpWait--
	else {
		Agent_isTping = false
		Agent_Tank.Tank_DrawPreShoot = true
		Agent_Tank.Tank_WalkingHitbox.x = Agent_TpX
		Agent_Tank.Tank_WalkingHitbox.y = Agent_TpY
		instance_create_layer(Agent_Tank.Tank_WalkingHitbox.x, Agent_Tank.Tank_WalkingHitbox.y, "ProjsLayer", SpectreTPParticle)
		if (Match.Match_UlimitedHabilities == false) Agent_Tank.Tank_QHability --
	}
}