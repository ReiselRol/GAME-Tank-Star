var angle = argument[0]
var roundedAngle = 0

if (angle >= 0 && angle < 45) {
    roundedAngle = 0;
} else if (angle >= 45 && angle < 135) {
    roundedAngle = 90;
} else if (angle >= 135 && angle < 225) {
    roundedAngle = 180;
} else if (angle >= 225 && angle < 315) {
    roundedAngle = 270;
} else {
    roundedAngle = 0;  // Ángulo cercano a 360, redondearlo a 0
}
return roundedAngle