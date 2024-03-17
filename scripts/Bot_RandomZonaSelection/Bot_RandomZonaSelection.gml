var zones = argument[0]

var objectiveX = 0
var objectiveY = 0
var finalObjective = [0, 0]

var Zone = noone
if (Tank_BotFirstTimeOnZone == false && Tank_HasTheSpike == false && Tank_BotForcePrecisionZone == false) {
	var size = array_length_1d(zones) - 1
	while (instance_exists(Zone) == false) Zone = zones[irandom(size)]
} else Zone = zones[0]
objectiveX = Zone.x
objectiveY = Zone.y

var randomX = irandom(Zone.image_xscale * 10) / 2
var randomY = irandom(Zone.image_yscale * 10) / 2
while (place_meeting(randomX, randomY, HitboxTile) || place_meeting(randomX, randomY, HitboxTileNoShadows)) {
	randomX = irandom(Zone.image_xscale * 10) / 2
	randomY = irandom(Zone.image_yscale * 10) / 2
}
if (irandom(1) == 0) objectiveX += randomX
else objectiveX -= randomX
if (irandom(1) == 0) objectiveY += randomY
else objectiveY -= randomY
while (Tank_HasTheSpike == true && instance_position(objectiveX, objectiveY, HitboxZoneSpike) == noone) {
	objectiveX = Zone.x
	objectiveY = Zone.y
	var randomX = irandom(Zone.image_xscale * 10) / 2
	var randomY = irandom(Zone.image_yscale * 10) / 2
	if (irandom(1) == 0) objectiveX += randomX
	else objectiveX -= randomX
	if (irandom(1) == 0) objectiveY += randomY
	else objectiveY -= randomY
}
finalObjective[0] = objectiveX
finalObjective[1] = objectiveY

return finalObjective