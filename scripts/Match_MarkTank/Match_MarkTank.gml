/// @description Crear una instancia que marcara al tanque
/// @param Tank_id
/// @param time__ticks
///
/// @note Asegúrate de que la instancia del tanke exista

var tankToMark = argument[0]
var time = argument[1]
var mark = instance_create_layer(tankToMark.x, tankToMark.y, "CameraHitboxLayer", MarkedTank)
mark.Mark_TankMarked = tankToMark
mark.Mark_TimeMark = time
mark.Mark_TimeMaxMarked = time
