var CameraX = x - (Camera_Width * Camera_Zoom / 2)
var CameraY = y - (Camera_Height * Camera_Zoom / 2)
Camera_CameraHitbox.x = CameraX
Camera_CameraHitbox.y = CameraY
if (Tank_MainCamera == true) camera_set_view_pos(view_camera[0], CameraX, CameraY)