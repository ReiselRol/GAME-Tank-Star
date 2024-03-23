/// @description End step for check before
Spike_isDefusing = false
var ID = id
with (Tank) {
	if (Tank_Attacker == false && Tank_IsBombKeyPressed == true && point_distance(x, y, ID.x, ID.y) <= 60) {
		ID.Spike_isDefusing = true
		break
	}
}

if (Spike_isPlanted == true) {
	if (Spike_isDefused == false) {
		if (Spike_isDefusing == false) {
			if (Spike_DefusingSound != noone) {
				audio_stop_sound(Spike_DefusingSound)
				Spike_DefusingSound = noone
			}
			if (Spike_DefusedTime < Spike_MidddleDefusingTime) {
				if (Spike_DefusedTime > 0) Spike_DefusedTime --
			} else {
				if (Spike_DefusedTime > Spike_MidddleDefusingTime) Spike_DefusedTime --
			}
		} else {
			if (Spike_DefusingSound == noone) {
				Spike_DefusingSound = AudioPlaySound(UnplantingsSpikeSound)
				var actualMoment = G_GetTime(Spike_DefusingSound) - G_GetTime(Spike_AllTimeNeedToDefuse)
				if (actualMoment > 0) {
					var duracion_total = audio_sound_length(UnplantingsSpikeSound)
					if (actualMoment > duracion_total) actualMoment = duracion_total
					audio_sound_set_track_position(Spike_DefusingSound, actualMoment)
				}
			}
			Spike_DefusedTime ++
		}
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
	} else Spike_Color = c_white
} else {
	if (speed > 0) {
		speed -= 1
		if (Spike_RotateLeft) image_angle -= Spike_RotateSpeed
		else image_angle += Spike_RotateSpeed
	}
	move_bounce_solid(true)
}