/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var agent = id
if (instance_exists(Agent_Tank)) {
	if (Agent_Tank.Tank_IsABot == true) Agent3_IA()
	Agent_Tank.Tank_DrawPreShoot = true
	Agent3_E()
	Agent3_Q()
	Agent_Tank.Tank_HabilitiesSelected[2] = Agent_ParasyteActived
	Agent_Tank.Tank_HabilitiesSelected[1] = Agent_ParasyteCablePrepared
} else instance_destroy()