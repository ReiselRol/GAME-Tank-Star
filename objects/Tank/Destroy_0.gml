/// @description Drop Selected Weapon
if (Tank_Health <= 0) Tank_DropGun()
instance_destroy(Tank_WalkingHitbox)
Tank_FoundNextCamera()
instance_destroy(Camera_CameraHitbox)
var myInfo = ds_list_find_value(global.Match_Players, Tank_PlayerID)
myInfo[16] = false
ds_list_replace(global.Match_Players, Tank_PlayerID, myInfo)