/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var agent = id
if (instance_exists(Agent_Tank)) {
	if (Agent_Tank.Tank_IsABot == true) Agent3_IA()
	Agent_Tank.Tank_DrawPreShoot = true
	Agent_Tank.Tank_HabilitiesSelected[2] = Agent_ParasyteActived
	Agent3_E()
} else instance_destroy()