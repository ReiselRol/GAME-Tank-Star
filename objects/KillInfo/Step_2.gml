/// @description Move to some Screen Points
var ID = id
with (Tank) {
	if (Tank_MainCamera == true) {
		ID.KillInfo_ScaleFixer = Camera_Zoom / Camera_DefautZoom
		break
	}
}
var killInfoActuslCount = instance_number(KillInfo)
if (killInfoActuslCount < KillInfo_TotalKillInfo) KillInfo_TotalKillInfo = killInfoActuslCount
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) * 0.8
y = camera_get_view_y(view_camera[0]) + (KillInfo_Scale * 170 * KillInfo_ScaleFixer) * KillInfo_TotalKillInfo + 60 * KillInfo_ScaleFixer
if (KillInfo_DespawnTime <= 0) {
	if (image_alpha > 0) image_alpha -= 0.05
	else instance_destroy()
}
else KillInfo_DespawnTime--