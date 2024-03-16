var X = argument[0]
var Y = argument[1]

Agent_isQActived = false
Agent_Tank.Tank_GunCooldown = 30
		
var smokeCloud = instance_create_layer(Agent_Tank.x, Agent_Tank.y, "ProjsLayer", StormThrowedCloud)
smokeCloud.StormCloud_Team = Agent_Tank.Tank_Team
smokeCloud.StormCloud_GoToX = X
smokeCloud.StormCloud_GoToY = Y
smokeCloud.image_angle = point_direction(Agent_Tank.x, Agent_Tank.y, X, Y)
with (Agent_Tank) AudioPlaySound(StormThrowingStormCloud)

if (Match.Match_UlimitedHabilities == false) Agent_Tank.Tank_QHability --