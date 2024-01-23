/// @description Zoom -
if (Camera_Zoom > 0.5 && Tank_IsABot == false) {
	Camera_Zoom -= 0.01
	Tank_RefreshCamera()
}