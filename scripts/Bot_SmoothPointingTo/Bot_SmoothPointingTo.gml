var PointingTo = argument[0]
var Speed = 4 + Tank_BotElo / 500
var NewDir = argument[1]

var angleDifference = angle_difference(PointingTo, NewDir)
if (angleDifference == 0) return PointingTo
else if (angleDifference < 0) {
	if (PointingTo + Speed > NewDir) return NewDir
	else return PointingTo + Speed
} else {
	if (PointingTo - Speed < NewDir) return NewDir
	else return PointingTo - Speed
}