/// @description End step for check before
Spike_isDefusing = false
var tank_instance = instance_nearest(x, y, Tank)
if (tank_instance.Tank_Attacker == false && tank_instance.Tank_IsBombKeyPressed == true && point_distance(x, y, tank_instance.x, tank_instance.y) <= 50) Spike_isDefusing = true
if (Spike_isPlanted == true) {
	if (Spike_isDefused == false) {
		if (Spike_isDefusing == false) {
			if (Spike_DefusedTime < Spike_MidddleDefusingTime) {
				if (Spike_DefusedTime > 0) Spike_DefusedTime --
			} else {
				if (Spike_DefusedTime > Spike_MidddleDefusingTime) Spike_DefusedTime --
			}
		} else Spike_DefusedTime ++
		Spike_isDefused = (Spike_DefusedTime >= Spike_AllTimeNeedToDefuse)
		if (Spike_isDefused == false) {
			Spike_TimeToExplode--
			if (Spike_TimeToExplode <= 0) instance_destroy()
			if (Spike_ChangeClockCicleTime == Spike_TimeToExplode) Spike_ClockToChangeColor /= 2
			else if (Spike_ChangeClockCicleTime / 2 == Spike_TimeToExplode) Spike_ClockToChangeColor /= 2
			else if (Spike_ChangeClockCicleTime / 4 == Spike_TimeToExplode) Spike_ClockToChangeColor /= 2
			else if (Spike_ChangeClockCicleTime / 6 == Spike_TimeToExplode) Spike_ClockToChangeColor /= 2
			if (Spike_ClockTime > 0) Spike_ClockTime --
			else {
				Spike_Color = (Spike_Color == c_white) ? c_red : c_white
				if (Spike_Color == c_red) {
					Spike_ClockTime = Spike_ClockToChangeColor / 4
					AudioPlaySoundUnchangedPicth(SpikeBip)
				} else Spike_ClockTime = Spike_ClockToChangeColor
			}
		}
	} else {
		Spike_Color = c_white
	}
} else {
	if (speed > 0) {
		speed -= 1
		if (Spike_RotateLeft) image_angle -= Spike_RotateSpeed
		else image_angle += Spike_RotateSpeed
	}
}