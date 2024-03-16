/// @description crear un sonido que dependiendo de donde este el main tank se escuche mas o menos
/// @param audio_id
/// @return El audio por si quiere ser modificado
///
/// @note Asegúrate de que la instancia del tanke exista

var audio = argument[0]
var tankID = noone
with (Tank) {
	if (Tank_MainCamera == true) {
		tankID = id
		break
	}
}
if (tankID != noone) {
	if (id == tankID) return audio_play_sound(audio, 0, false)
	else {
		var distance = distance_to_object(tankID)
		var volumen = 1 - ( distance / 850)
		var sound = audio_play_sound(audio, 1, false)
		audio_sound_gain(sound, volumen, 0)
		audio_sound_pitch(sound, 1 + irandom(100) / 100)
		return sound
	}
}