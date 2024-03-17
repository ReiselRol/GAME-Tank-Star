/// @description Crear una instancia que marcara al tanque
/// @param Tank_id
/// @param time__ticks
///
/// @note Asegúrate de que la instancia del tanke exista

var tankToMark = argument[0]
var time = argument[1]
var isAlreadyMarked = false
with (MarkedTank) {
	if (Mark_TankMarked == tankToMark){
		Mark_TimeMark = time
		isAlreadyMarked = true
		break
	}
}
if (isAlreadyMarked == false) {
	var mark = instance_create_layer(tankToMark.x, tankToMark.y, "CameraHitboxLayer", MarkedTank)
	mark.Mark_TankMarked = tankToMark
	mark.Mark_TimeMark = time
	mark.Mark_TimeMaxMarked = time
	if (tankToMark.Tank_Team != 0) {
		var sound = audio_play_sound(MarkedSound, 1, false)
		audio_sound_pitch(sound, 0.5 + 0.2 * instance_number(MarkedTank))
	}
}
