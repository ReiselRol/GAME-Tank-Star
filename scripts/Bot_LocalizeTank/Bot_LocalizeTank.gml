
var MyID = id
var myCamera = Camera_CameraHitbox
var listOfPossibles = ds_list_create()
with (Tank) {
	if (MyID.Tank_Team != Tank_Team && place_meeting(x, y, myCamera)) {
		var distance = point_distance(x, y, MyID.x, MyID.y)
		var angle = point_direction(MyID.x, MyID.y, x, y)
		MyID.Tank_BotPointingTo.image_xscale = distance
		MyID.Tank_BotPointingTo.image_angle = angle
		var thisTank = id
		with (MyID.Tank_BotPointingTo){
			if (place_meeting(x, y, HitboxTile) == false) ds_list_add(listOfPossibles, [thisTank, distance])
		}
	}
}
with (BotTank) {
	if (MyID.Tank_Team != Tank_Team && place_meeting(x, y, myCamera)) {
		var distance = point_distance(x, y, MyID.x, MyID.y)
		var angle = point_direction(MyID.x, MyID.y, x, y)
		MyID.Tank_BotPointingTo.image_xscale = distance
		MyID.Tank_BotPointingTo.image_angle = angle
		var thisTank = id
		with (MyID.Tank_BotPointingTo){
			if (place_meeting(x, y, HitboxTile) == false) ds_list_add(listOfPossibles, [thisTank, distance])
		}
	}	
}
var size = ds_list_size(listOfPossibles)
if (size == 0) return noone
else {
	var minimalDistance = 10000
	var possibleTank = -1
	for (var i = 0; i < size; i++) {
		var info = ds_list_find_value(listOfPossibles, i)
		if (info[1] < minimalDistance) {
			minimalDistance = info[1]
			possibleTank = info[0]
		}
	}
	return possibleTank
}