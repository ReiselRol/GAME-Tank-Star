var audio = argument[0]
var tankID = noone
with (Tank) {
	if (Tank_MainCamera == true) {
		tankID = id
		break
	}
}
if (tankID != noone) {
	if (id == tankID) return AudioPlayNormalSound(audio)
	else {
		var distance = distance_to_object(tankID)
		var volumen = 1 - ( distance / 850)
		var sound = AudioPlayNormalSound(audio)
		audio_sound_gain(sound, volumen, 0)
		return sound
	}
}