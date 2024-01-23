///@description Zoom
if (Camera_Zoom < Camera_MaxZoom && Tank_IsABot == false) {
	Camera_Zoom += 0.01
	Tank_RefreshCamera()
}