Camera_Width = 1920
Camera_Height = 1080
if (Tank_MainCamera == true) camera_set_view_size( view_camera[0], Camera_Width * Camera_Zoom, Camera_Height * Camera_Zoom)	
Camera_CameraHitbox.image_xscale = Camera_Width * Camera_Zoom
Camera_CameraHitbox.image_yscale = Camera_Height * Camera_Zoom