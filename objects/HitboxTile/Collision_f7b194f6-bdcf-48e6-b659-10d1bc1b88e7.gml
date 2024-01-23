/// @description Try If Is the main
if (instance_exists(other.Camera_From) && other.Camera_Main == true) {
	visibleShader = other.Camera_From.Tank_MainCamera
	TankSpecting = other.Camera_From
}