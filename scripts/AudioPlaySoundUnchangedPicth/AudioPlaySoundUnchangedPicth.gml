var audio = argument[0]
var tankID = noone
with (Tank) {
	if (Tank_MainCamera == true) {
		tankID = id
		break
	}
}
if (tankID != noone) {
	if (id == tankID) audio_play_sound(audio, 0, false)
	else {
		var distance = distance_to_object(tankID)
		var volumen = 1 - ( distance / 1000)
		var sound = audio_play_sound(audio, 1, false)
		audio_sound_gain(sound, volumen, 0)
	}
}