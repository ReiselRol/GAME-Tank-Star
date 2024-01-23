var tank = id
with (Tank_WalkingHitbox) {
	if ( place_meeting(x + tank.Tank_Hsp , y , HitboxTile))
	{
		while (abs(tank.Tank_Hsp) > 0.1)
		{
			tank.Tank_Hsp *= 0.5
			if (!place_meeting( x + tank.Tank_Hsp , y , HitboxTile)) x += tank.Tank_Hsp
		}
		tank.Tank_Hsp = 0
	}
	if (place_meeting(x + tank.Tank_Hsp , y , HitboxDoor))
	{
		while (abs(tank.Tank_Hsp) > 0.1)
		{
			tank.Tank_Hsp *= 0.5
			if (!place_meeting( x + tank.Tank_Hsp , y , HitboxDoor)) x += tank.Tank_Hsp
		}
		tank.Tank_Hsp = 0
	}
	x += tank.Tank_Hsp
	if ( (place_meeting(x , y + tank.Tank_Vsp , HitboxTile)))
	{
		while ( abs(tank.Tank_Vsp) > 0.1)
		{
			tank.Tank_Vsp *= 0.5
			if ((!place_meeting(x, y + tank.Tank_Vsp, HitboxTile))) y += tank.Tank_Vsp
		} 
		tank.Tank_Vsp = 0
	}
	if (place_meeting(x , y + tank.Tank_Vsp , HitboxDoor))
	{
		while ( abs(tank.Tank_Vsp) > 0.1)
		{
			tank.Tank_Vsp *= 0.5
			if ((!place_meeting(x, y + tank.Tank_Vsp, HitboxDoor))) y += tank.Tank_Vsp
		} 
		tank.Tank_Vsp = 0
	}
	y += tank.Tank_Vsp
}
x = Tank_WalkingHitbox.x 
y = Tank_WalkingHitbox.y