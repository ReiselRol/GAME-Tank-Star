if (Agent_Tank.Tank_QKeyPressed == true && Agent_Tank.Tank_QHability > 0) {
	if (Agent_ParasyteCablePrepared == true) Agent_ParasyteCablePrepared = false
	else {
		Agent_ParasyteCablePrepared = true
		Agent_ParasyteCableVertical = false
	}
}
if (Agent_ParasyteCablePrepared == true) {
	if (mouse_check_button_pressed(Agent_Tank.Tank_ScoopingKey)) {
		if (Agent_ParasyteCableVertical == true) Agent_ParasyteCableVertical = false
		else Agent_ParasyteCableVertical = true
	}
	if (Agent_Tank.Tank_IsShootTapping == true) {
		Agent_Tank.Tank_IsShootTapping = false
		Agent_Tank.Tank_IsShooting = false
		var Cables = instance_create_layer(Agent_Tank.x, Agent_Tank.y, "ProjsLayer", ParasyteCable)
		Cables.direction = Agent_Tank.Tank_PointingTo
		Cables.Cable_vertical = Agent_ParasyteCableVertical
		Cables.Cable_TankID = Agent_Tank
		Agent_ParasyteCablePrepared = false
		if (Match.Match_UlimitedHabilities == false) Agent_Tank.Tank_QHability --
	}
}