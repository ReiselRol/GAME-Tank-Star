var zoom = argument[0]
var zoomVel = 0.01
if (Camera_Zoom != zoom) {
	for (var i = 0; i < 5; i++) {
		if (Camera_Zoom != zoom) {
			if (zoom < Camera_Zoom) Camera_Zoom -= zoomVel
			else if (zoom > Camera_Zoom)Camera_Zoom += zoomVel
		}
	}
}