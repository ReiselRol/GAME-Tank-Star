/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (speed > 0) {
	speed -= 0.25
	sprite_index = Gun_SkinCannonChasis
	if (Gun_RotateLeft) image_angle -= Gun_RotateSpeed
	else image_angle += Gun_RotateSpeed
}