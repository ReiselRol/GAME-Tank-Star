if (Tank_MainCamera == true) {
	Tank_MainCamera = false
	Camera_CameraHitbox.Camera_Main = false
	var myTeam = Tank_Team
	var founded = false
	var myID = id
	with (BotTank) {
		if (myTeam == Tank_Team && id != myID) {
			if (instance_exists(Camera_CameraHitbox))Camera_CameraHitbox.Camera_Main = true
			Tank_MainCamera = true
			founded = true
			break
		}
	}
	if (founded == false) {
		with (BotTank) {
			if (id != myID) {
				if (instance_exists(Camera_CameraHitbox))Camera_CameraHitbox.Camera_Main = true
				Tank_MainCamera = true
				founded = true
				break
			}
		}
	}
}