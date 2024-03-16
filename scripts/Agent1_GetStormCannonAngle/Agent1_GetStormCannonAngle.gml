var scale = 1.25
var height = sprite_get_height(StormHandCannon) * 0.8 * scale
var width = sprite_get_width(StormHandCannon) * 0.6 * scale
var X = x + lengthdir_x(height, Tank_PointingTo - 90)
var Y = y + lengthdir_y(width, Tank_PointingTo - 90)
if (Tank_IsABot == false) return point_direction(X, Y, mouse_x, mouse_y)
else if (instance_exists(Tank_BotEnemie)) return point_direction(X, Y, Tank_BotEnemie.x, Tank_BotEnemie.y)
else return Tank_PointingTo