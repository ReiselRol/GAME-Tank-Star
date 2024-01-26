var CameraX = x - (Camera_Width * Camera_Zoom / 2)
var CameraY = y - (Camera_Height * Camera_Zoom / 2)
if (CameraY > room_height - Camera_CameraHitbox.image_yscale) CameraY = room_height - Camera_CameraHitbox.image_yscale
else if (CameraY < 0) CameraY = 0
if (CameraX > room_width - Camera_CameraHitbox.image_xscale) CameraX = room_width - Camera_CameraHitbox.image_xscale
else if (CameraX < 0) CameraX = 0
Camera_CameraHitbox.x = CameraX
Camera_CameraHitbox.y = CameraY
if (Tank_MainCamera == true) camera_set_view_pos(view_camera[0], CameraX, CameraY)