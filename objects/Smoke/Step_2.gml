/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var TankM = noone
with (Tank) if (Tank_MainCamera == true) TankM = id
if (TankM != noone && image_alpha > 0.2 && place_meeting(x, y, TankM)) image_alpha -= 0.05
else if (image_alpha < 1) image_alpha += 0.05
if (Smoke_Time > 0) Smoke_Time --
else {
	if (shadowOpacity > 0) shadowOpacity -= 0.01
	else instance_destroy()
}