var AngleToCheck = argument[0]
var AngleSpeed = 15

if (AngleToCheck > Tank_Angle) {
	if (AngleToCheck < Tank_Angle + AngleSpeed) Tank_Angle = AngleToCheck
	else Tank_Angle += AngleSpeed
} else {
	if (AngleToCheck > Tank_Angle - AngleSpeed) Tank_Angle = AngleToCheck
	else Tank_Angle -= AngleSpeed
}