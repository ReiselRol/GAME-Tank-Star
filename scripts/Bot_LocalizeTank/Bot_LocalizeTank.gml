
var MyID = id
var myCamera = Camera_CameraHitbox
var listOfPossibles = ds_list_create()
if (Tank_Flashed == true) return noone
with (Tank) {
	if (MyID.Tank_Team != Tank_Team && place_meeting(x, y, myCamera) && Tank_IsInvisible == false) {
		var distance = point_distance(x, y, MyID.x, MyID.y)
		var angle = point_direction(MyID.x, MyID.y, x, y)
		MyID.Tank_BotPointingTo.image_xscale = distance
		MyID.Tank_BotPointingTo.image_angle = angle
		var thisTank = id
		with (MyID.Tank_BotPointingTo){
			if (thisTank.Tank_Marked == false) {
				if (place_meeting(x, y, HitboxTile) == false && place_meeting(x, y, HitboxTileNoShadows) == true) {
					MyID.Tank_BotEnemie_LastX = thisTank.x
					MyID.Tank_BotEnemie_LastY = thisTank.y
				}
				else if (place_meeting(x, y, HitboxTile) == false) ds_list_add(listOfPossibles, [thisTank, distance])
			} else {
				if (place_meeting(x, y, HitboxTile) == true) {
					MyID.Tank_BotEnemie_LastX = thisTank.x
					MyID.Tank_BotEnemie_LastY = thisTank.y
				} else ds_list_add(listOfPossibles, [thisTank, distance])
			}
		}
	}
}
with (SpectreEye) {
	if (MyID.Tank_Team != SpectreEye_Team && place_meeting(x, y, myCamera)) {
		var distance = point_distance(x, y, MyID.x, MyID.y)
		var angle = point_direction(MyID.x, MyID.y, x, y)
		MyID.Tank_BotPointingTo.image_xscale = distance
		MyID.Tank_BotPointingTo.image_angle = angle
		var thisTank = id
		with (MyID.Tank_BotPointingTo){
			if (place_meeting(x, y, HitboxTile) == false && place_meeting(x, y, HitboxTileNoShadows) == true) {
				MyID.Tank_BotEnemie_LastX = thisTank.x
				MyID.Tank_BotEnemie_LastY = thisTank.y
			}
			else if (place_meeting(x, y, HitboxTile) == false) ds_list_add(listOfPossibles, [thisTank, distance])
		}
	}
}
ds_list_destroy(Tank_BotLisEnemies)
Tank_BotLisEnemies = ds_list_create()
var size = ds_list_size(listOfPossibles)
if (size == 0) return noone
else {
	var minimalDistance = 10000
	var possibleTank = -1
	for (var i = 0; i < size; i++) {
		var info = ds_list_find_value(listOfPossibles, i)
		ds_list_add(Tank_BotLisEnemies, info[0])
		if (info[1] < minimalDistance) {
			minimalDistance = info[1]
			possibleTank = info[0]
		}
	}
}
var smokeCount = 0
var theirSmoke = -2
var mySmoke = -2
with (possibleTank) if (place_meeting(x, y, Smoke)) theirSmoke = instance_position(x, y, Smoke)
with (MyID) if (place_meeting(x, y, Smoke)) mySmoke = instance_position(x, y, Smoke)
if (mySmoke == theirSmoke) {
	if ((mySmoke == -2 && collision_line(possibleTank.x, possibleTank.y, MyID.x, MyID.y, Smoke, false, true) == noone) || mySmoke != -2) return possibleTank
	else return noone
}
else return noone
