/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (Proj_IsTouching == true) {
	if (image_alpha > 0) image_alpha -= 0.025
	else instance_destroy()
}