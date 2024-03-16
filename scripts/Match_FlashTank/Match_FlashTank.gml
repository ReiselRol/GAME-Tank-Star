/// @description Crear una instancia que flash al tanque
/// @param Tank_id
/// @param time_ticks
/// @param flash_id
///
/// @note Asegúrate de que la instancia del tanke exista

var tankToFlash = argument[0]
var time = argument[1]
var flashID = argument[2]
var mark = instance_create_layer(tankToFlash.x, tankToFlash.y, "UILayer", FlashedTank)
mark.Flash_TankFlashed = tankToFlash
mark.Flash_TimeFlash = time
mark.Flash_TimeMaxMarked = time
tankToFlash.Tank_Flashed = true
mark.image_index = flashID
